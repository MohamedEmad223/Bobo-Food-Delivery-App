import 'package:bobo_food_delivery_app/config/routing/routes.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/presentation/cubit/cubit/onboarding_cubit.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/presentation/widgets/on_boarding_bottom_action.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/presentation/widgets/on_boarding_dots_indicator.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/presentation/widgets/on_boarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingCubit>();

    return BlocListener<OnboardingCubit, OnboardingState>(
      listenWhen: (prev, curr) =>
          curr.whenOrNull(goHomeState: () => true) ?? false,
      listener: (context, state) {
        Navigator.pushReplacementNamed(context, Routes.homeScreen);
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: cubit.pageController,
                  onPageChanged: cubit.changePage,
                  itemCount: cubit.onBoardingData.length,
                  itemBuilder: (_, i) =>
                      OnboardingPage(model: cubit.onBoardingData[i]),
                ),
              ),
              BlocBuilder<OnboardingCubit, OnboardingState>(
                buildWhen: (prev, curr) =>
                    curr.whenOrNull(nextState: (_) => true) ?? false,
                builder: (context, state) {
                  final idx = state.whenOrNull(nextState: (i) => i) ?? 0;
                  final isLast = idx == cubit.onBoardingData.length - 1;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      OnboardingDotsIndicator(
                        totalPages: cubit.onBoardingData.length,
                        currentIndex: idx,
                      ),
                      SizedBox(height: 28.h),
                      OnboardingBottomActions(
                        isLastPage: isLast,
                        onSkip: () {
                          Navigator.pushReplacementNamed(
                            context,
                            Routes.homeScreen,
                          );
                        },
                        onNext: cubit.transition,
                      ),
                      SizedBox(height: 32.h),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}