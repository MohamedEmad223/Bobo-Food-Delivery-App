import 'package:bobo_food_delivery_app/core/theme/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinInput extends StatefulWidget {
  final int length;
  final ValueChanged<String>? onComplete;
  final ValueChanged<String>? onChanged;
  final bool disabled;
  final bool autoFocus;
  final bool obscure;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const PinInput({
    super.key,
    this.length = 5,
    this.onComplete,
    this.onChanged,
    this.disabled = false,
    this.autoFocus = true,
    this.obscure = false,
    this.controller,
    this.focusNode,
  });

  @override
  State<PinInput> createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;




  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }


  PinTheme _base() => PinTheme(
    width: 48.w,
    height: 56.h,
    textStyle: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 22.sp,
      fontWeight: FontWeight.w500,
      color:ColorHelper.defaultTextColor,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(color: ColorHelper.defaultBorder, width: 1.5.w),
    ),
  );


  @override
  Widget build(BuildContext context) {
    final base = _base();

    final focusedTheme = base.copyWith(
      decoration: BoxDecoration(
        color: ColorHelper.focusedBg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: ColorHelper.mainColor, width: 1.5.w),
      ),
    );

    final submittedTheme = base.copyWith(
      textStyle: base.textStyle?.copyWith(color: ColorHelper.mainColor),
      decoration: BoxDecoration(
        color: ColorHelper.submittedBg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: ColorHelper.mainColor, width: 1.5.w),
      ),
    );

    final followingTheme = base.copyWith(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: ColorHelper.defaultBorder, width: 1.5.w),
      ),
    );

    final disabledTheme = base.copyWith(
      textStyle: base.textStyle?.copyWith(color: ColorHelper.disabledTextColor),
      decoration: BoxDecoration(
        color: ColorHelper.disabledBg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: ColorHelper.disabledBorder, width: 1.5.w),
      ),
    );

    return Pinput(
      length: widget.length,
      controller: _controller,
      focusNode: _focusNode,
      autofocus: widget.autoFocus,
      enabled: !widget.disabled,
      obscureText: widget.obscure,
      keyboardType: TextInputType.number,
      defaultPinTheme: base,
      focusedPinTheme: focusedTheme,
      submittedPinTheme: submittedTheme,
      followingPinTheme: followingTheme,
      disabledPinTheme: disabledTheme,
      separatorBuilder: (_) => SizedBox(width: 10.w),
      showCursor: true,
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 9.w),
            width: 16.w,
            height: 1.5.h,
            decoration: BoxDecoration(
              color: ColorHelper.mainColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ],
      ),
      onChanged: widget.onChanged,
      onCompleted: widget.onComplete,
      closeKeyboardWhenCompleted: true,
      onTapOutside: (_) => _focusNode.unfocus(),
    );
  }
}
