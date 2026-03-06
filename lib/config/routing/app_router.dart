import 'package:bobo_food_delivery_app/config/routing/routes.dart';
import 'package:bobo_food_delivery_app/features/auth/login.dart';
import 'package:bobo_food_delivery_app/features/splash/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return null;
    }
  }
}
