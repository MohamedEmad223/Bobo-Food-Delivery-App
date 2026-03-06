import 'package:bobo_food_delivery_app/core/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routing/app_router.dart';
import 'config/routing/routes.dart';

class BoboFoodDeliveryApp extends StatelessWidget {
  const BoboFoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MaterialApp(
        theme: ThemeManager.getLightTheme(),
        darkTheme: ThemeManager.getDarkTheme(),
        themeMode: ThemeMode.system,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: AppRouter().generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
