import 'package:flutter/material.dart';

class OnboardingImageSection extends StatelessWidget {
  final String imagePath;

  const OnboardingImageSection({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: SizedBox(
        width: 280,
        height: 260,
        child: Image.asset(imagePath, fit: BoxFit.contain),
      ),
    );
  }
}