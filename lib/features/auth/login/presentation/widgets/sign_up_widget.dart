import 'package:bobo_food_delivery_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {
  final VoidCallback onSignUpTap;

  const SignUpWidget({super.key, required this.onSignUpTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: AppTextStyles.doNotHaveAccount(context)
        ),
        GestureDetector(
          onTap: onSignUpTap,
          child: Text(
            'Sign up',
            style: AppTextStyles.signUpText(context)
          ),
        ),
      ],
    );
  }
}