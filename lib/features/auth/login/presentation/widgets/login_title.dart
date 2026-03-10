import 'package:bobo_food_delivery_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppTextStyles.titleAuth(context));
  }
}
