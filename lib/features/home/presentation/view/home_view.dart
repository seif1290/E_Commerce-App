import 'package:e_commerce/core/routing/route_path.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_components.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_strings.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/snack_bar_state.dart';
import 'package:e_commerce/features/home/domain/use_cases/sign_out_use_case.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.signOutUseCase});
  final SignOutUseCase signOutUseCase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          TextButton(
            onPressed: () async {
              final res = await signOutUseCase(SignOutParams());
              return res.fold(
                (failure) {
                  AppComponents.showSnackBar(
                    context,
                    snackMessage: failure.message,
                    snackBarState: SnackBarState.error,
                  );
                },
                (_) {
                  context.go(RoutePath.login);
                },
              );
            },
            child: Text(AppStrings.signOut),
          ),
        ],
      ),
    );
  }
}
