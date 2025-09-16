import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_validators.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_components.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  late String _email;

  late final GlobalKey<FormState> _formKey;
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: Padding(
        padding: AppComponents.pagePadding,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.forgotPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: AppValues.spaceBtwItems),

                Text(
                  AppStrings.forgotPasswordSubTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppValues.spaceBtwSections),

                // Email Text Form Field
                AuthTextFormField(
                  prefixIcon: Icons.email_outlined,
                  labelText: AppStrings.emailLabelText,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {
                    _email = value;
                  },
                  validator: AppValidators.validateEmail,
                ),
                const SizedBox(height: AppValues.spaceBtwSections),

                // Submit button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.pushReplacementNamed(
                        RoutePath.success,
                        extra: {
                          AppStrings.titleMapped:
                              AppStrings.forgotPasswordSuccessScreenTitle,
                          AppStrings.subTitleMapped:
                              AppStrings.forgotPasswordSuccessScreenSubTitle,
                        },
                      );
                      // TODO: on press submit button
                    }
                  },
                  child: Text(AppStrings.submit),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
