import 'package:e_commerce/core/utils/constants/ui_constants/app_images.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:flutter/material.dart';

class HeaderSectionLogin extends StatelessWidget {
  const HeaderSectionLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Image.asset(AppImages.appLogo, height: 150.0),
        Text(
          AppStrings.loginHeaderTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: AppValues.spaceBtwItems),
        Text(
          AppStrings.loginHeaderSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
