
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizedSpacer extends StatelessWidget {
  final bool hasAction;
  const SizedSpacer({super.key, required this.hasAction});

  @override
  Widget build(BuildContext context) {
    return hasAction ?  SizedBox(width: 54.w) :  SizedBox(width: 54.w);
  }
}