import 'package:bobo_food_delivery_app/core/di/injection.dart';
import 'package:bobo_food_delivery_app/core/theme/cubit/cubit/theme_cubit.dart';
import 'package:bobo_food_delivery_app/core/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routing/app_router.dart';
import 'config/routing/routes.dart';

class BoboFoodDeliveryApp extends StatelessWidget {
  const BoboFoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocProvider(
        create: (context) => getIt<ThemeCubit>(),
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) => MaterialApp(
            themeMode: themeMode,
            debugShowCheckedModeBanner: false,
            theme: ThemeManager.getLightTheme(),
            darkTheme: ThemeManager.getDarkTheme(),
            onGenerateRoute: AppRouter().generateRoute,
            initialRoute: Routes.registerScreen,
          ),
        ),
      ),
    );
  }
}
