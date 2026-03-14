import 'package:bobo_food_delivery_app/core/theme/app_text_styles.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_app_bar.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_text_form_feild.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/auth_button.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/login_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final _passwordCtrl = TextEditingController();
  final _passwordConformationCtrl = TextEditingController();
  final bool _isLoading = false;
  final bool _isEnabled = false;

  void _handleLogin() {
    //TODO
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoboAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 36.h),
            LoginTitle(text: 'Create a new password'),
            SizedBox(height: 15.h),
            Text(
              'Enter the verification code sent to your email',
              style: AppTextStyles.heading3(context),
            ),
            SizedBox(height: 40.h),
            CustomTextFormField(
              hint: 'password',
              controller: _passwordCtrl,
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              validator: (v) {
                //TODO
              },
            ),
            SizedBox(height: 20.h),
            CustomTextFormField(
              hint: 'password confirmation',
              controller: _passwordConformationCtrl,
              isPassword: true,
              validator: (v) {},
            ),
            const Spacer(),
            AuthButton(
              isEnabled: _isEnabled,
              isLoading: _isLoading,
              onTap: _handleLogin,
            ),
          ],
        ),
      ),
    );
  }
}
