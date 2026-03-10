import 'package:bobo_food_delivery_app/core/theme/app_text_styles.dart';
import 'package:bobo_food_delivery_app/core/utils/assets_helper.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_app_bar.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BoboAppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset(AssetsHelper.chooseScreen),
              SizedBox(height: 20.h),
              Text(
                'Join to get the delicious quizines!',
                style: AppTextStyles.chooseText(context),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 35.h),
              CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  // Handle sign up action
                },
              ),
              SizedBox(height: 15.h),
              Text('OR', style: AppTextStyles.orText(context)),
              SizedBox(height: 15.h),
              CustomButton(
                text: 'Log In',
                onPressed: () {
                  // Handle log in action
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
