import 'package:flutter/material.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_colors.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_images.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';

class AuthOptions extends StatelessWidget {
  const AuthOptions({super.key, this.isLogin = true});
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Divider
        Row(
          children: [
            Expanded(flex: 2, child: Divider()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppValues.sm),
              child: Text(
                isLogin ? AppStrings.signInWith : AppStrings.signUpWith,
              ),
            ),
            Expanded(flex: 2, child: Divider()),
          ],
        ),
        const SizedBox(height: AppValues.spaceBtwSections),

        // Sign in Options
        ElevatedButton(
          onPressed: () {
            // TODO: Sign in with google
          },

          style: ElevatedButton.styleFrom(
            maximumSize: Size(double.infinity, 64.0),
            minimumSize: Size(double.infinity, 0),
            elevation: 0,
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.all(AppValues.md),

            shape: const CircleBorder(
              side: BorderSide(color: AppColors.borderPrimary),
            ),
          ),
          child: const Image(image: AssetImage(AppImages.googleIcon)),
        ),
      ],
    );
  }
}
