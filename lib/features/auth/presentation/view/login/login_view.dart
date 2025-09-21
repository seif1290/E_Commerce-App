import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/core/shared/widgets/loader_transparent.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_colors.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_components.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/snack_bar_state.dart';
import 'package:e_commerce/features/auth/presentation/view/auth_options.dart';
import 'package:e_commerce/features/auth/presentation/view/login/form_section_login.dart';
import 'package:e_commerce/features/auth/presentation/view/login/header_section_login.dart';
import 'package:e_commerce/features/auth/presentation/view_model/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (errMsg) => AppComponents.showSnackBar(
            context,
            snackMessage: errMsg,
            snackBarState: SnackBarState.error,
          ),
          success: (userEntity) => context.go(RoutePath.loading),
        );
      },
      child: SafeArea(
        child: Stack(
          children: [
            Scaffold(
              body: Padding(
                padding: AppComponents.pagePadding,
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
                          context.push(
                            RoutePath.register,
                            extra: context.read<AuthCubit>(),
                          );
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
                          padding: const EdgeInsets.symmetric(
                            vertical: AppValues.md,
                          ),
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
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                state.whenOrNull(loading: () => const LoaderTransparent());
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
