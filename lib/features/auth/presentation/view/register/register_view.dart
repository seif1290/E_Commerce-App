import 'dart:developer';

import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_components.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/snack_bar_state.dart';
import 'package:e_commerce/core/utils/widgets/loader_transparent.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_options.dart';
import 'package:e_commerce/features/auth/presentation/view/register/form_section_register.dart';
import 'package:e_commerce/features/auth/presentation/view_model/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key, required AuthCubit authCubit})
    : _authCubit = authCubit;
  final AuthCubit _authCubit;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authCubit,
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (errMsg) => AppComponents.showSnackBar(
              context,
              snackMessage: errMsg,
              snackBarState: SnackBarState.error,
            ),
            success: (userEntity) => context.go(
              RoutePath.emailVerification,
              extra: userEntity.email,
            ),
          );
        },
        child: SafeArea(
          child: Stack(
            children: [
              Scaffold(
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
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  state.whenOrNull(loading: () => const LoaderTransparent());
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
