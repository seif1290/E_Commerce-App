import 'package:e_commerce/core/routing/route_name.dart';
import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/features/auth/presentation/view/email_verification_view.dart';
import 'package:e_commerce/features/auth/presentation/view/login/login_view.dart';
import 'package:e_commerce/features/auth/presentation/view/register/register_view.dart';
import 'package:e_commerce/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:e_commerce/features/onboarding/presentation/view/onboarding_view.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: RoutePath.emailVerification,

    routes: [
      GoRoute(
        name: RouteName.onboarding,
        path: RoutePath.onboarding,
        builder: (context, state) =>
            const OnboardingView(onboardings: onboardingsList),
      ),
      GoRoute(
        name: RouteName.login,
        path: RoutePath.login,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        name: RouteName.register,
        path: RoutePath.register,
        builder: (context, state) => RegisterView(),
      ),
      GoRoute(
        name: RouteName.emailVerification,
        path: RoutePath.emailVerification,
        builder: (context, state) =>
            EmailVerificationView(email: 'example@mail.com'),
      ),
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
