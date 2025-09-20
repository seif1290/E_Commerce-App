import 'dart:developer';

import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_images.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/features/loading/presentation/view_model.dart/loading_cubit.dart/loading_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  @override
  void initState() {
    super.initState();

    // Ensure this runs after the first frame, so BlocListener is attached
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<LoadingCubit>().handleUserState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoadingCubit, LoadingState>(
      listener: (context, state) {
        state.whenOrNull(
          onboardingStarted: () => context.go(RoutePath.onboarding),
          userNotAuthenticated: (msg) {
            log('message: $msg');
            context.go(RoutePath.login);
          },
        );
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                AppImages.appLogo,
                height: MediaQuery.sizeOf(context).height * 0.5,
              ),
            ),
            Text(
              AppStrings.appName,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
