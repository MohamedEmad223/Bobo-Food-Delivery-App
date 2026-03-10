import 'package:bobo_food_delivery_app/core/theme/app_text_styles.dart';
import 'package:bobo_food_delivery_app/core/theme/color_helper.dart';
import 'package:flutter/material.dart';

class OnboardingBottomActions extends StatefulWidget {
  final VoidCallback onSkip;
  final VoidCallback onNext;
  final bool isLastPage;

  const OnboardingBottomActions({
    super.key,
    required this.onSkip,
    required this.onNext,
    this.isLastPage = false,
  });

  @override
  State<OnboardingBottomActions> createState() =>
      _OnboardingBottomActionsState();
}

class _OnboardingBottomActionsState extends State<OnboardingBottomActions>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 110),
    );
    _scale = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        mainAxisAlignment: widget.isLastPage
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          // Skip button
          if (!widget.isLastPage) ...[
            GestureDetector(
              onTap: widget.onSkip,
              child: Container(
                height: 54,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: ColorHelper.primaryGreen,
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Skip',
                    style: AppTextStyles.buttonTextSecondary(),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 14),
          ],

          // Next / Get Started button
          Expanded(
            child: GestureDetector(
              onTapDown: (_) => _ctrl.forward(),
              onTapUp: (_) {
                _ctrl.reverse();
                widget.onNext();
              },
              onTapCancel: () => _ctrl.reverse(),
              child: ScaleTransition(
                scale: _scale,
                child: Container(
                  height: 54,
                  decoration: BoxDecoration(
                    color: ColorHelper.primaryGreen,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: ColorHelper.primaryGreen.withOpacity(0.35),
                        blurRadius: 16,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Center(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      child: Text(
                        widget.isLastPage ? 'Get Started' : 'Next',
                        key: ValueKey(widget.isLastPage),
                        style: AppTextStyles.buttonTextPrimary(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
