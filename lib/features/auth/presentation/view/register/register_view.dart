import 'package:e_commerce/core/utils/constants/app_components.dart';
import 'package:e_commerce/core/utils/constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/app_values.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_options.dart';
import 'package:e_commerce/features/auth/presentation/view/register/form_section_register.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: AppComponents.pagePadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Text(
                  AppStrings.letsCreateAccount,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: AppValues.spaceBtwSections),
                const FormSectionRegister(),
                const SizedBox(height: AppValues.spaceBtwSections),
                const AuthOptions(isLogin: false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
