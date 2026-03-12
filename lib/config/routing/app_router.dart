import 'package:bobo_food_delivery_app/config/routing/routes.dart';
import 'package:bobo_food_delivery_app/features/auth/choose/presentation/choose_screen.dart';
import 'package:bobo_food_delivery_app/features/auth/forget_password/presentation/forget_password_screen.dart';
import 'package:bobo_food_delivery_app/features/auth/login/presentation/screens/login_screen.dart';
import 'package:bobo_food_delivery_app/features/auth/register/presentation/register_screen.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:bobo_food_delivery_app/features/splash/presentation/splash_screen.dart';
import 'package:bobo_food_delivery_app/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.chooseScreen:
        return MaterialPageRoute(builder: (_) => const ChooseScreen());
      default:
        return null;
    }
  }
}
