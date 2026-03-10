import 'package:bobo_food_delivery_app/core/utils/assets_helper.dart';
import 'package:bobo_food_delivery_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.initial());

  List<OnboardingModel> onBoardingData = [
    OnboardingModel(
      image: AssetsHelper.onBoardingOne,
      title: 'Welcome to the most tastiest app',
      description: 'You know, this app is edible meaning you can eat it!',
    ),
    OnboardingModel(
      image: AssetsHelper.onBoardingTwo,
      title: 'We use nitro on bicycles for delivery! ',
      description:
          'For very fast delivery we use nitro on bicycles, kidding, but we’re very fast.',
    ),
    OnboardingModel(
      image: AssetsHelper.onBoardingThree,
      title: 'We’re the besties of birthday peoples',
      description:
          'We send cakes to our plus members, (only one cake per person)',
    ),
  ];

  int currentIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  void changePage(int index) {
    currentIndex = index;
    emit(OnboardingState.nextState(index));
  }

  transition() {
    if (currentIndex >= onBoardingData.length - 1) {
      emit(const OnboardingState.goHomeState());
    } else {
      currentIndex++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
      );
      emit(OnboardingState.nextState(currentIndex));
    }
  }
}
