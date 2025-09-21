import 'package:e_commerce/core/di/setup.dart';
import 'package:e_commerce/core/routing/app_router.dart';
import 'package:e_commerce/core/theme/app_theme.dart';
import 'package:e_commerce/features/loading/data/repos/loading_repo.dart';
import 'package:e_commerce/features/loading/presentation/view_model.dart/loading_cubit.dart/loading_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopEase extends StatelessWidget {
  const ShopEase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoadingCubit(loadingRepo: getIt.get<LoadingRepo>()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
