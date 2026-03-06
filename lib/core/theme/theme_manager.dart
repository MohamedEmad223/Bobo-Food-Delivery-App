import 'package:bobo_food_delivery_app/core/theme/color_helper.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData getLightTheme() {
    return ThemeData(
      fontFamily: "almarai",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: ColorHelper.mainBackGroundColor,
      colorScheme: ColorScheme.light(
        primary: Colors.blue,
        secondary: Colors.blue,
        surface: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.blue,
        onError: Colors.white,
        surfaceContainer: Colors.blue,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.blue),
        bodyMedium: TextStyle(color: Colors.blue),
        titleLarge: TextStyle(color: Colors.blue),
      ),
      dividerColor: Colors.blue,
      cardColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData(
      fontFamily: "almarai",
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      scaffoldBackgroundColor: ColorHelper.mainDarkColor,
      colorScheme: ColorScheme.dark(
        primary: Colors.white,
        secondary: Colors.blue,
        surface: Colors.white,
        error: Colors.red,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onError: Colors.white,
        surfaceContainer: Colors.blue,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        titleLarge: TextStyle(color: Colors.white),
      ),
      dividerColor: Colors.blue,
      cardColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blue.withAlpha(100),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
