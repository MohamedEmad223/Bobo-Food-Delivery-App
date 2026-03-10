import 'package:bobo_food_delivery_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/presentation/widgets/on_boardimg_image_section.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/presentation/widgets/on_boarding_text_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnboardingImageSection(imagePath: model.image),
        SizedBox(height: 40.h),
        OnboardingTextContent(
          title: model.title,
          description: model.description,
        ),
      ],
    );
  }
}
