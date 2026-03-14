import 'package:bobo_food_delivery_app/core/widgets/custom_app_bar.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_text_form_feild.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/auth_button.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/login_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final _emailCtrl = TextEditingController();
  final bool _isLoading = false;
  final bool _isEnabled = false;

  void _handleLogin() {
    //TODO
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BoboAppBar(showBackButton: true),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.h),
                LoginTitle(text: 'Forgot your password?\nDon\'t worry '),

                SizedBox(height: 40.h),
                CustomTextFormField(
                  hint: 'email address',
                  controller: _emailCtrl,
                  keyboardType: TextInputType.emailAddress,
                  validator: (v) {
                    //TODO
                  },
                ),
                SizedBox(height: 60.h),
                AuthButton(
                  isEnabled: _isEnabled,
                  isLoading: _isLoading,
                  onTap: _handleLogin,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
