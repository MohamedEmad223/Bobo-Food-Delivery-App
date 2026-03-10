import 'package:freezed_annotation/freezed_annotation.dart';

part 'on_boarding_model.freezed.dart';

@freezed
abstract class OnboardingModel with _$OnboardingModel {
  const factory OnboardingModel({
    required String image,
    required String title,
    required String description,
  }) = _OnboardingModel;

}