import 'package:e_commerce/core/utils/constants/ui_constants/app_images.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/features/onboarding/data/model/onboarding_model.dart';

const List<OnboardingModel> onboardingsList = <OnboardingModel>[
  OnboardingModel(
    image: AppImages.shoppingCart,
    title: AppStrings.onBoardingTitle1,
    subTitle: AppStrings.onBoardingSubTitle1,
  ),
  OnboardingModel(
    image: AppImages.payment,
    title: AppStrings.onBoardingTitle2,
    subTitle: AppStrings.onBoardingSubTitle2,
  ),
  OnboardingModel(
    image: AppImages.deliveryTruck,
    title: AppStrings.onBoardingTitle3,
    subTitle: AppStrings.onBoardingSubTitle3,
    isLastPage: true,
  ),
];
