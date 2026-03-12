import 'package:bobo_food_delivery_app/core/theme/color_helper.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_app_bar.dart';
import 'package:bobo_food_delivery_app/core/widgets/custom_text_form_feild.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/auth_button.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/widgets/login_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _namectrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmPasswordCtrl = TextEditingController();
  bool _isLoading = false;
  bool _isEnabled = false;

  @override
  void initState() {
    super.initState();
    // Enable button only when both fields have text
    _emailCtrl.addListener(_checkFields);
    _namectrl.addListener(_checkFields);
    _passwordCtrl.addListener(_checkFields);
    _confirmPasswordCtrl.addListener(_checkFields);
  }

  void _checkFields() {
    final enabled =
        _emailCtrl.text.isNotEmpty &&
        _namectrl.text.isNotEmpty &&
        _passwordCtrl.text.isNotEmpty &&
        _confirmPasswordCtrl.text.isNotEmpty;
    if (enabled != _isEnabled) {
      setState(() => _isEnabled = enabled);
    }
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _namectrl.dispose();
    _passwordCtrl.dispose();
    _confirmPasswordCtrl.dispose();
    super.dispose();
  }

  Future<void> _handleRegister() async {
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
                  LoginTitle(text: 'Create your\naccount'),
                  SizedBox(height: 40.h),
                  CustomTextFormField(
                    hint: 'Full Name',
                    controller: _namectrl,
                    validator: (v) {
                      //TODO
                    },
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hint: 'Email Address',
                    controller: _emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    validator: (v) {
                      //TODO
                    },
                  ),
                  SizedBox(height: 20.h),
                  LoginTitle(text: 'Create a new account'),

                  CustomTextFormField(
                    hint: 'Password',
                    controller: _passwordCtrl,
                    keyboardType: TextInputType.emailAddress,
                    validator: (v) {
                      //TODO
                    },
                  ),
                  SizedBox(height: 20.h),
                  CustomTextFormField(
                    hint: 'Confirm Password',
                    controller: _confirmPasswordCtrl,
                    isPassword: true,
                    validator: (v) {},
                  ),
                  SizedBox(height: 60.h),
                  AuthButton(
                    isEnabled: _isEnabled,
                    isLoading: _isLoading,
                    onTap: _handleRegister,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
