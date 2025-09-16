import 'package:e_commerce/core/utils/constants/ui_constants/app_colors.dart';
import 'package:e_commerce/core/utils/constants/ui_constants/app_values.dart';
import 'package:flutter/material.dart';

class TextFormFieldTheme {
  TextFormFieldTheme._();

  static final InputDecorationTheme
  _inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.textSecondary,
    suffixIconColor: AppColors.textSecondary,
    errorStyle: const TextStyle(fontStyle: FontStyle.normal),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppValues.borderRadiusLg),
      borderSide: const BorderSide(width: 1.0, color: AppColors.borderPrimary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppValues.borderRadiusLg),
      borderSide: const BorderSide(width: 1.0, color: AppColors.borderPrimary),
    ),

    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppValues.borderRadiusLg),
      borderSide: const BorderSide(width: 1.0, color: AppColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppValues.borderRadiusLg),
      borderSide: const BorderSide(width: 1.0, color: AppColors.warning),
    ),
    labelStyle: const TextStyle(
      fontSize: AppValues.fontMd,
      color: AppColors.textSecondary,
    ),
    hintStyle: const TextStyle(
      fontSize: AppValues.fontMd,
      color: AppColors.textSecondary,
    ),
  );
  static final lightInputDecorationTheme = _inputDecorationTheme.copyWith(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppValues.borderRadiusLg),
      borderSide: const BorderSide(width: 1.0, color: AppColors.borderPrimary),
    ),
  );
  static final darkInputDecorationTheme = _inputDecorationTheme.copyWith(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppValues.borderRadiusLg),
      borderSide: const BorderSide(width: 1.0, color: Colors.grey),
    ),
  );
}
