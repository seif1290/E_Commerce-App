import 'package:e_commerce/core/di/service_locator.dart';
import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_images.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/features/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce/features/auth/presentation/view/email_verification_view.dart';
import 'package:e_commerce/features/auth/presentation/view/forgot_password_view.dart';
import 'package:e_commerce/features/auth/presentation/view/login/login_view.dart';
import 'package:e_commerce/features/auth/presentation/view/register/register_view.dart';
import 'package:e_commerce/features/auth/presentation/view/success_view.dart';
import 'package:e_commerce/features/auth/presentation/view_model/auth_cubit/auth_cubit.dart';
import 'package:e_commerce/features/home/presentation/view/home_view.dart';
import 'package:e_commerce/features/loading/presentation/view/loading_view.dart';
import 'package:e_commerce/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:e_commerce/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    routes: [
      // Loading
      GoRoute(
        path: RoutePath.loading,
        builder: (context, state) => const LoadingView(),
      ),

      // Onboarding
      GoRoute(
        path: RoutePath.onboarding,
        builder: (context, state) =>
            const OnboardingView(onboardings: onboardingsList),
      ),

      // Auth
      GoRoute(
        path: RoutePath.login,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => AuthCubit(authRepo: getIt.get<AuthRepo>()),
            child: LoginView(),
          );
        },
        routes: [
          GoRoute(
            path: 'register',
            builder: (context, state) {
              return RegisterView(authCubit: state.extra as AuthCubit);
            },
          ),
        ],
      ),

      GoRoute(
        path: RoutePath.emailVerification,
        builder: (context, state) =>
            EmailVerificationView(email: state.extra! as String),
      ),
      GoRoute(
        path: RoutePath.forgotPassword,
        builder: (context, state) => ForgotPasswordView(),
      ),
      GoRoute(
        path: RoutePath.success,
        builder: (context, state) {
          final extra = state.extra as Map<String, String>? ?? {};
          final String title = extra[AppStrings.titleMapped] ?? '';
          final String subTitle = extra[AppStrings.subTitleMapped] ?? '';
          final String assetPath =
              extra[AppStrings.assetPathMapped] ?? AppImages.appLogo;

          return SuccessView(
            title: title,
            subTitle: subTitle,
            assetPath: assetPath,
          );
        },
      ),

      // Home
      GoRoute(path: RoutePath.home, builder: (context, state) => HomeView()),
    ],
  );

  // static String _getInitialLocation() {
  //   bool isOnBoardFinished =
  //       Cache.readData(key: KeysManager.finishedOnBoard) ?? false;

  //   final String startPage;

  //   if (!isOnBoardFinished) {
  //     startPage = Routes.onBoarding;
  //   } else {
  //     if (AppConstants.TOKEN == null && AppConstants.SelectedSemester == null) {
  //       startPage = Routes.registrationLayout;
  //     } else {
  //       startPage = Routes.loading;
  //     }
  //   }

  //   return startPage;
  // }
}
