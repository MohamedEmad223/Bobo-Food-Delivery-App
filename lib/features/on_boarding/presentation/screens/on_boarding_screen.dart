import 'package:bobo_food_delivery_app/features/on_boarding/presentation/cubit/cubit/onboarding_cubit.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/presentation/screens/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: const OnBoardingView(),
    );
  }
}


