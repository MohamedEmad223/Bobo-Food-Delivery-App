import 'dart:async';
import 'package:flutter/material.dart';

class ResendTimer extends StatefulWidget {
  final int initialSeconds;
  final VoidCallback? onResend;
  final String label;
  final String resendLabel;

  const ResendTimer({
    super.key,
    this.initialSeconds = 60,
    this.onResend,
    this.label = "Didn't receive the code?",
    this.resendLabel = 'Resend',
  });

  @override
  State<ResendTimer> createState() => _ResendTimerState();
}

class _ResendTimerState extends State<ResendTimer>
    with SingleTickerProviderStateMixin {
  late int _seconds;
  bool _isRunning = false;
  Timer? _timer;
  int _resendCount = 0;

  // Pulse animation for urgent (≤10s) state
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    // Timer starts at 0 — only begins counting after the user taps Resend.
    _seconds = 0;

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _pulseController.reverse();
        } else if (status == AnimationStatus.dismissed &&
            _isRunning &&
            _seconds <= 10) {
          _pulseController.forward();
        }
      });

    _pulseAnimation = Tween<double>(begin: 1.0, end: 0.5).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pulseController.dispose();
    super.dispose();
  }

  void _start([int? from]) {
    _timer?.cancel();
    setState(() {
      _seconds = from ?? widget.initialSeconds;
      _isRunning = true;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (!mounted) return;
      setState(() {
        if (_seconds <= 1) {
          _seconds = 0;
          _isRunning = false;
          _pulseController.stop();
          _pulseController.reset();
          t.cancel();
        } else {
          _seconds--;
          if (_seconds <= 10 && !_pulseController.isAnimating) {
            _pulseController.forward();
          }
        }
      });
    });
  }

  void _handleResend() {
    if (_isRunning) return;
    setState(() => _resendCount++);
    widget.onResend?.call();
    _start();
  }

  String get _formatted {
    final mm = (_seconds ~/ 60).toString().padLeft(2, '0');
    final ss = (_seconds % 60).toString().padLeft(2, '0');
    return '$mm:$ss';
  }

  bool get _isUrgent => _seconds <= 10 && _isRunning;
  bool get _canResend => !_isRunning;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Label
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF6B7280),
            fontWeight: FontWeight.w400,
          ),
        ),

        const SizedBox(width: 6),

        // Timer (only shown while running)
        if (_isRunning)
          AnimatedBuilder(
            animation: _pulseAnimation,
            builder: (context, _) => Opacity(
              opacity: _isUrgent ? _pulseAnimation.value : 1.0,
              child: Text(
                _formatted,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: _isUrgent
                      ? const Color(0xFFEF4444)
                      : const Color(0xFF374151),
                  letterSpacing: 0.04 * 13,
                ),
              ),
            ),
          ),

        if (_isRunning) const SizedBox(width: 6),

        // Resend button
        GestureDetector(
          onTap: _canResend ? _handleResend : null,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 180),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: _canResend
                  ? const Color(0xFF6366F1)
                  : const Color(0xFF9CA3AF),
              decoration: _canResend
                  ? TextDecoration.underline
                  : TextDecoration.none,
              decorationColor: const Color(0xFF6366F1),
            ),
            child: Text(widget.resendLabel),
          ),
        ),
      ],
    );
  }
}