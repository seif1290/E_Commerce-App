import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:e_commerce/features/onboarding/data/model/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingDetailsColumn extends StatelessWidget {
  const OnboardingDetailsColumn({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(onboardingModel.image),
        const SizedBox(height: AppValues.xl),
        Text(
          onboardingModel.title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppValues.md),
        Text(
          onboardingModel.subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
