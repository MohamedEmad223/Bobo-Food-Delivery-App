import 'package:bobo_food_delivery_app/core/theme/color_helper.dart';
import 'package:flutter/material.dart';

class OnboardingDotsIndicator extends StatelessWidget {
  final int totalPages;
  final int currentIndex;

  const OnboardingDotsIndicator({
    super.key,
    required this.totalPages,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(totalPages, (i) {
        final isActive = i == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 24 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: isActive
                ? ColorHelper.primaryGreen
                : (isDark ? ColorHelper.white24 : ColorHelper.gray200),
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}
