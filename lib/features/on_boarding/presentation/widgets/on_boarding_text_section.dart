import 'package:bobo_food_delivery_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingTextContent extends StatelessWidget {
  final String title;
  final String description;

  const OnboardingTextContent({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.onboardingTitle(context),
          ),
          const SizedBox(height: 14),
          Text(
            description,
            textAlign: TextAlign.center,
            style: AppTextStyles.onboardingDescription(context),
          ),
        ],
      ),
    );
  }
}
