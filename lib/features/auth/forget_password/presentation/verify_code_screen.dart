import 'dart:developer';

import 'package:bobo_food_delivery_app/core/theme/app_text_styles.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_app_bar.dart';
import 'package:bobo_food_delivery_app/features/auth/forget_password/widgets/pin_put_widget.dart';
import 'package:bobo_food_delivery_app/features/auth/forget_password/widgets/resend_timer.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/auth_button.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/login_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoboAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginTitle(text: 'Verify your new account'),
              SizedBox(height: 15.h),
              Text(
                'Enter the verification code sent to your email',
                style: AppTextStyles.heading3(context),
              ),
              SizedBox(height: 30.h),
              PinInput(
                length: 5,
                onComplete: (pin) => log('PIN: $pin'),
                onChanged: (pin) => log('Current: $pin'),
              ),
              SizedBox(height: 25.h),
              ResendTimer(
                initialSeconds: 30,
                onResend: () => log('Code resent!'),
              ),
              Spacer(),
              AuthButton(onTap: () => log('Verify code!')),
              SizedBox(height: 25.h),
            ],
          ),
        ),
      ),
    );
  }
}
