import 'package:e_commerce/core/utils/constants/app_colors.dart';
import 'package:e_commerce/core/utils/constants/app_values.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();
  static final _elevatedButtonStyleForm = ElevatedButton.styleFrom(
    minimumSize: Size(double.infinity, 0),
    elevation: 0,
    backgroundColor: AppColors.buttonPrimary,
    foregroundColor: AppColors.textWhite,

    disabledBackgroundColor: AppColors.buttonSecondary,
    disabledForegroundColor: AppColors.textSecondary,
    padding: const EdgeInsets.symmetric(vertical: AppValues.md),
    textStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(12.0),
    ),
  );
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: _elevatedButtonStyleForm,
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: _elevatedButtonStyleForm,
  );
}
