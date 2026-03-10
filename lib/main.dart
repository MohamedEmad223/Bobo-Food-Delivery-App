import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bobo_food_delivery_app.dart';
import 'core/di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configure GoogleFonts to use local fonts only (no internet fetch)
  GoogleFonts.config.allowRuntimeFetching = false;

  await configureDependencies();
  runApp(const BoboFoodDeliveryApp());
}
