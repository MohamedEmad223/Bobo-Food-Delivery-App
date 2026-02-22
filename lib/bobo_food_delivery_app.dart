import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routing/app_router.dart';
import 'config/routing/routes.dart';



class BoboFoodDeliveryApp extends StatelessWidget {
  const BoboFoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //* The size of the screen of figma design.
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MaterialApp(
        initialRoute: Routes.splashScreen,
        onGenerateRoute: AppRouter().generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}