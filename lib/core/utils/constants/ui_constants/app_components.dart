import 'package:e_commerce/core/utils/constants/ui_constants/app_colors.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/snack_bar_state.dart';
import 'package:flutter/material.dart';

class AppComponents {
  AppComponents._();

  static const EdgeInsetsGeometry pagePadding = EdgeInsets.only(
    left: AppValues.md,
    right: AppValues.md,
    top: AppValues.xl,
  );

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    BuildContext context, {
    required String snackMessage,
    required SnackBarState snackBarState,
  }) => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        snackMessage,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
          color: snackBarState == SnackBarState.success
              ? AppColors.success
              : snackBarState == SnackBarState.error
              ? AppColors.error
              : snackBarState == SnackBarState.warning
              ? AppColors.warning
              : AppColors.info,
        ),
      ),
    ),
  );
}
