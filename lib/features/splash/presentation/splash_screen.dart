import 'package:bobo_food_delivery_app/config/routing/routes.dart';
import 'package:bobo_food_delivery_app/core/utils/assets_helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> backgroundScale;
  late Animation<double> logoFade;
  late Animation<double> logoScale;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    backgroundScale = Tween<double>(begin: 1.3, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    logoFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.5, 0.9, curve: Curves.easeIn),
      ),
    );

    logoScale = Tween<double>(begin: 0.8, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.5, 0.9, curve: Curves.easeOutBack),
      ),
    );

    controller.forward();

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, Routes.loginScreen);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ScaleTransition(
            scale: backgroundScale,
            child: Image.asset(
              isDark ? AssetsHelper.splashDark : AssetsHelper.splash,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: FadeTransition(
              opacity: logoFade,
              child: ScaleTransition(
                scale: logoScale,
                child: Image.asset(
                  isDark
                      ? AssetsHelper.logoSplashScreenImage
                      : AssetsHelper.logoSplashScreenImage,
                  width: 180,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
