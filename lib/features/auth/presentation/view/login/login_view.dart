import 'package:e_commerce/core/routing/route_name.dart';
import 'package:e_commerce/core/utils/constants/app_colors.dart';
import 'package:e_commerce/core/utils/constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/app_values.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_options.dart';
import 'package:e_commerce/features/auth/presentation/view/login/form_section_login.dart';
import 'package:e_commerce/features/auth/presentation/view/login/header_section_login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: AppValues.md,
            right: AppValues.md,
            top: AppValues.xl,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Header
                const HeaderSectionLogin(),
                const SizedBox(height: AppValues.spaceBtwSections),
                const FormSectionLogin(),
                const SizedBox(height: AppValues.spaceBtwItems),

                // Create Account Button
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(RouteName.register);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.sizeOf(context).width * 0.5,
                      0,
                    ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    foregroundColor: ThemeMode.system == ThemeMode.light
                        ? AppColors.borderSecondary
                        : AppColors.borderPrimary,
                    disabledBackgroundColor: AppColors.buttonSecondary,
                    disabledForegroundColor: AppColors.textSecondary,
                    padding: const EdgeInsets.symmetric(vertical: AppValues.md),
                    textStyle: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12.0),
                      side: BorderSide(
                        color: ThemeMode.system == ThemeMode.light
                            ? AppColors.borderSecondary
                            : AppColors.borderPrimary,
                      ),
                    ),
                  ),
                  child: Text(
                    AppStrings.createAccount,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                const SizedBox(height: AppValues.spaceBtwSections),
                const AuthOptions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
