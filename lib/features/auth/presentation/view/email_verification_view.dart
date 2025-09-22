import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/core/shared/widgets/loading_transparent.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_components.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_images.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/snack_bar_state.dart';
import 'package:e_commerce/features/auth/presentation/view_model/email_verification_cubit/email_verification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class EmailVerificationView extends StatefulWidget {
  final String email;
  const EmailVerificationView({super.key, required this.email});

  @override
  State<EmailVerificationView> createState() => _EmailVerificationViewState();
}

class _EmailVerificationViewState extends State<EmailVerificationView> {
  bool canSendEmail = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmailVerificationCubit, EmailVerificationState>(
      listener: (context, state) {
        state.whenOrNull(
          signOutSuccess: () {
            context.go(RoutePath.login);
          },
          signOutFailure: (message) {
            AppComponents.showSnackBar(
              context,
              snackMessage: message,
              snackBarState: SnackBarState.error,
            );
          },
        );
      },
      child: SafeArea(
        child: Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                actions: [
                  TextButton(
                    onPressed: () async {
                      await context.read<EmailVerificationCubit>().signOut();
                    },
                    child: Text(AppStrings.signOut),
                  ),
                ],
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppValues.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200.0,
                      child: Image.asset(AppImages.appLogo),
                    ),

                    // Title
                    Text(
                      AppStrings.emailVerificationTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: AppValues.spaceBtwItems),

                    // Email
                    Text(
                      widget.email,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: AppValues.spaceBtwItems),

                    // Description
                    Text(
                      AppStrings.emailVerificationSubTitle,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: AppValues.spaceBtwItems),

                    // Continue Button
                    ElevatedButton(
                      onPressed: () {
                        context.go(RoutePath.loading);
                      },
                      child: const Text(AppStrings.emailVerificationButton),
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<EmailVerificationCubit, EmailVerificationState>(
              builder: (context, state) =>
                  state.whenOrNull(
                    signOutLoading: () => const LoadingTransparent(),
                  ) ??
                  const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
