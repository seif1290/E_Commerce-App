import 'package:e_commerce/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();
  static final _elevatedButtonStyleForm = ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: AppColors.buttonPrimary,
    disabledBackgroundColor: AppColors.buttonSecondary,
    disabledForegroundColor: AppColors.textSecondary,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(vertical: 18),
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
