import 'package:e_commerce/core/routing/route_path.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/core/utils/app_validators.dart';
import 'package:e_commerce/core/utils/constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/app_values.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_check_box.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_text_form_field.dart';
import 'package:go_router/go_router.dart';

class FormSectionLogin extends StatefulWidget {
  const FormSectionLogin({super.key});

  @override
  State<FormSectionLogin> createState() => _FormSectionLoginState();
}

class _FormSectionLoginState extends State<FormSectionLogin> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailCont;
  late final TextEditingController _passwordCont;

  @override
  void initState() {
    super.initState();
    _emailCont = TextEditingController();
    _passwordCont = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    _emailCont.dispose();
    _passwordCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
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
            onFieldSubmitted: (_) {
              login();
            },
          ),
          const SizedBox(height: AppValues.spaceBtwItems),

          // Remember me and forgot password row
          Row(
            children: [
              const AuthCheckBox(),
              const Text(AppStrings.rememberMe),
              const Spacer(),
              TextButton(
                onPressed: () {
                  context.pushNamed(RoutePath.forgotPassword);
                },
                child: Text(AppStrings.forgotPassword),
              ),
            ],
          ),
          const SizedBox(height: AppValues.spaceBtwSections),

          // Login Button
          ElevatedButton(
            onPressed: () {
              login();
            },
            child: Text(AppStrings.signIn),
          ),
        ],
      ),
    );
  }

  void login() {
    if (_formKey.currentState!.validate()) {
      // TODO: Login Logic
    }
  }
}
