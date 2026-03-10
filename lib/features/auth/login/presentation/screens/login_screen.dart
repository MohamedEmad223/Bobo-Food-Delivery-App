import 'package:bobo_food_delivery_app/core/theme/color_helper.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_app_bar.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_text_form_feild.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/auth_button.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/forget_password_link.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/login_title.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/sign_up_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _isLoading = false;
  bool _isEnabled = false;

  @override
  void initState() {
    super.initState();
    // Enable button only when both fields have text
    _emailCtrl.addListener(_checkFields);
    _passwordCtrl.addListener(_checkFields);
  }

  void _checkFields() {
    final enabled = _emailCtrl.text.isNotEmpty && _passwordCtrl.text.isNotEmpty;
    if (enabled != _isEnabled) {
      setState(() => _isEnabled = enabled);
    }
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark
          ? ColorHelper.mainDarkColor
          : ColorHelper.mainBackGroundColor,
      appBar: BoboAppBar(showBackButton: true),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 36.h),
                  LoginTitle(text: 'Log in to your\naccount'),
                  SizedBox(height: 40.h),
                  CustomTextFormField(
                    hint: 'email address',
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    validator: (v) {
                      //TODO
                    },
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hint: 'password',
                    controller: _passwordCtrl,
                    isPassword: true,
                    validator: (v) {},
                  ),
                  SizedBox(height: 16.h),
                  ForgotPasswordLink(onTap: () {}),
                  const Spacer(),
                  AuthButton(
                    isEnabled: _isEnabled,
                    isLoading: _isLoading,
                    onTap: _handleLogin,
                  ),
                  SizedBox(height: 20.h),
                  SignUpWidget(onSignUpTap: () {}),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
