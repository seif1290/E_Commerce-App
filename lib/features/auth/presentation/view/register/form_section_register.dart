import 'package:e_commerce/core/routing/route_name.dart';
import 'package:e_commerce/features/auth/presentation/view/register/agree_to_privacy_section_register.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/core/utils/app_validators.dart';
import 'package:e_commerce/core/utils/constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/app_values.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_text_form_field.dart';
import 'package:go_router/go_router.dart';

class FormSectionRegister extends StatefulWidget {
  const FormSectionRegister({super.key});

  @override
  State<FormSectionRegister> createState() => _FormSectionRegisterState();
}

class _FormSectionRegisterState extends State<FormSectionRegister> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _firstNameCont;
  late final TextEditingController _lastNameCont;
  late final TextEditingController _userNameCont;
  late final TextEditingController _emailCont;
  late final TextEditingController _passwordCont;

  @override
  void initState() {
    super.initState();
    _emailCont = TextEditingController();
    _passwordCont = TextEditingController();
    _firstNameCont = TextEditingController();
    _lastNameCont = TextEditingController();
    _userNameCont = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    _emailCont.dispose();
    _passwordCont.dispose();
    _firstNameCont.dispose();
    _lastNameCont.dispose();
    _userNameCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // First and Last Fields
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: AuthTextFormField(
                  controller: _firstNameCont,
                  labelText: AppStrings.firstName,
                  prefixIcon: Icons.person_outline,
                ),
              ),
              const SizedBox(width: AppValues.spaceBtwItems),
              Expanded(
                child: AuthTextFormField(
                  controller: _lastNameCont,
                  labelText: AppStrings.lastname,
                  prefixIcon: Icons.person_2_outlined,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppValues.spaceBtwItems),

          // Username Text Form Field
          AuthTextFormField(
            controller: _userNameCont,
            labelText: AppStrings.userName,
            prefixIcon: Icons.person_add_alt_outlined,
          ),
          const SizedBox(height: AppValues.spaceBtwItems),

          // Email Text Form Field
          AuthTextFormField(
            controller: _emailCont,
            labelText: AppStrings.emailLabelText,
            keyboardType: TextInputType.emailAddress,
            validator: AppValidators.validateEmail,
            prefixIcon: Icons.email_outlined,
          ),
          const SizedBox(height: AppValues.spaceBtwItems),

          // Password Text Form Field
          AuthTextFormField(
            controller: _passwordCont,
            labelText: AppStrings.passwordLabelText,
            keyboardType: TextInputType.visiblePassword,
            validator: AppValidators.validatePassword,
            prefixIcon: Icons.password_outlined,
            isPassword: true,
            textInputAction: TextInputAction.done,
          ),
          const SizedBox(height: AppValues.spaceBtwItems),

          // Agree to Privacy Policy
          AgreeToPrivacySectionRegister(),
          const SizedBox(height: AppValues.spaceBtwItems),

          // Register Button
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.pushReplacementNamed(
                  RouteName.emailVerification,
                  extra: _emailCont.text,
                );
                // TODO: Register Logic
              }
            },
            child: Text(AppStrings.createAccount),
          ),
        ],
      ),
    );
  }
}
