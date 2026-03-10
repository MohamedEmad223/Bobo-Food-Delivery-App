import 'package:bobo_food_delivery_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.controller,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscure = true;
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword && _obscure,
      keyboardType: widget.keyboardType,
      cursorColor: const Color(0xFF4CAF50),
      style: AppTextStyles.textForm(context),
      validator: (value) {
        final error = widget.validator?.call(value);
        setState(() => _hasError = error != null);
        return error;
      },
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: AppTextStyles.textForm(context),
        filled: true,
        fillColor: _hasError ? const Color(0xFFFDECEC) : Colors.grey.shade100,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            color: _hasError ? Colors.red : Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: _hasError ? Colors.red : Colors.green),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
                icon: _obscure
                    ? SvgPicture.asset('assets/svgs/Visible.svg')
                    : SvgPicture.asset('assets/svgs/Not visible.svg'),
              )
            : null,
      ),
    );
  }
}
