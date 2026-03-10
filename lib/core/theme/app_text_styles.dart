import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_helper.dart';

class AppTextStyles {
  // Font sizes
  static const double fontSizeXLarge = 26.0;
  static const double fontSizeXXLarge = 32.0;
  static const double fontSizeLarge = 16.0;
  static const double fontSizeMedium = 15.0;
  static const double fontSizeSmall = 14.0;

  // Font weights (pre-defined for convenience)
  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightBold = FontWeight.w700;
  static const FontWeight fontWeightSemiBold = FontWeight.w600;
  static const FontWeight fontWeightExtraBold = FontWeight.w800;

  // Onboarding text styles
  static TextStyle onboardingTitle(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeXLarge,
      fontWeight: fontWeightExtraBold,
      color: isDark
          ? ColorHelper.textPrimaryDark
          : ColorHelper.textPrimaryLight,
      height: 1.25,
    );
  }

  static TextStyle chooseText(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeXLarge,
      fontWeight: fontWeightExtraBold,
      color: isDark
          ? ColorHelper.textPrimaryDark
          : ColorHelper.textPrimaryLight,
      height: 1.25,
    );
  }

  static TextStyle orText(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeMedium,
      fontWeight: fontWeightBold,
      color: isDark
          ? ColorHelper.textPrimaryDark
          : ColorHelper.textPrimaryLight,
      height: 1.25,
    );
  }

  static TextStyle textForm(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeMedium,
      fontWeight: fontWeightMedium,
      color: isDark ? ColorHelper.textPrimaryDark : ColorHelper.darkColor,
      height: 1.25,
    );
  }

  static TextStyle doNotHaveAccount(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeSmall,
      fontWeight: fontWeightMedium,
      color: isDark ? ColorHelper.grey400 : ColorHelper.grey400,
      height: 1.25,
    );
  }

  static TextStyle signUpText(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeSmall,
      fontWeight: fontWeightBold,
      color: isDark ? ColorHelper.mainColor : ColorHelper.mainColor,
      height: 1.25,
    );
  }

  static TextStyle titleAuth(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeXXLarge,
      fontWeight: fontWeightBold,
      color: isDark ? ColorHelper.mainBackGroundColor : ColorHelper.darkColor,
      height: 1.25,
    );
  }

  static TextStyle onboardingDescription(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeMedium,
      fontWeight: fontWeightRegular,
      color: isDark
          ? ColorHelper.textSecondaryDark
          : ColorHelper.textSecondaryLight,
      height: 1.6,
    );
  }

  static TextStyle buttonTextPrimary({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: fontSizeLarge,
      fontWeight: fontWeightExtraBold,
      color: color ?? Colors.white,
    );
  }

  static TextStyle buttonTextSecondary({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: fontSizeMedium,
      fontWeight: fontWeightBold,
      color: color ?? ColorHelper.primaryGreen,
    );
  }

  // General text styles
  static TextStyle heading1(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: 32.0,
      fontWeight: fontWeightExtraBold,
      color: isDark
          ? ColorHelper.textPrimaryDark
          : ColorHelper.textPrimaryLight,
    );
  }

  static TextStyle heading2(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeXLarge,
      fontWeight: fontWeightBold,
      color: isDark
          ? ColorHelper.textPrimaryDark
          : ColorHelper.textPrimaryLight,
    );
  }

  static TextStyle bodyText(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GoogleFonts.poppins(
      fontSize: fontSizeMedium,
      fontWeight: fontWeightRegular,
      color: isDark
          ? ColorHelper.textSecondaryDark
          : ColorHelper.textSecondaryLight,
    );
  }
}
