import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatefulWidget {
  final VoidCallback? onTap;
  final bool isLoading;
  final bool isEnabled;

  const AuthButton({
    super.key,
    required this.onTap,
    this.isLoading = false,
    this.isEnabled = false,
  });

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 110));
    _scale = Tween<double>(begin: 1.0, end: 0.97)
        .animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: widget.isEnabled ? (_) => _ctrl.forward() : null,
      onTapUp: widget.isEnabled
          ? (_) {
              _ctrl.reverse();
              widget.onTap?.call();
            }
          : null,
      onTapCancel: widget.isEnabled ? () => _ctrl.reverse() : null,
      child: ScaleTransition(
        scale: _scale,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: double.infinity,
          height: 54,
          decoration: BoxDecoration(
            color: widget.isEnabled
                ? const Color(0xFF4CAF50)
                : const Color(0xFFE5E7EB),
            borderRadius: BorderRadius.circular(14),
            boxShadow: widget.isEnabled
                ? [
                    BoxShadow(
                      color: const Color(0xFF4CAF50).withOpacity(0.3),
                      blurRadius: 14,
                      offset: const Offset(0, 6),
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: widget.isLoading
                ? SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: widget.isEnabled
                          ? Colors.white
                          : const Color(0xFF9CA3AF),
                    ),
                  )
                : Text(
                    'Log in',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: widget.isEnabled
                          ? Colors.white
                          : const Color(0xFF9CA3AF),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}