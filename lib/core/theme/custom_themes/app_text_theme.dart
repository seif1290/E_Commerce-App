import 'package:e_commerce/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();

  static const TextTheme _baseTextTheme = TextTheme(
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
    titleSmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
    labelLarge: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal),
  );

  static final TextTheme lightTextTheme = _baseTextTheme.copyWith(
    headlineLarge: _baseTextTheme.headlineLarge?.copyWith(
      color: AppColors.textPrimary,
    ),
    headlineMedium: _baseTextTheme.headlineMedium?.copyWith(
      color: AppColors.textPrimary,
    ),
    headlineSmall: _baseTextTheme.headlineSmall?.copyWith(
      color: AppColors.textPrimary,
    ),
    titleLarge: _baseTextTheme.titleLarge?.copyWith(
      color: AppColors.textPrimary,
    ),
    titleMedium: _baseTextTheme.titleMedium?.copyWith(
      color: AppColors.textPrimary,
    ),
    titleSmall: _baseTextTheme.titleSmall?.copyWith(
      color: AppColors.textPrimary,
    ),
    bodyLarge: _baseTextTheme.bodyLarge?.copyWith(color: AppColors.textPrimary),
    bodyMedium: _baseTextTheme.bodyMedium?.copyWith(
      color: AppColors.textPrimary,
    ),
    bodySmall: _baseTextTheme.bodySmall?.copyWith(
      color: AppColors.textPrimary.withValues(alpha: 0.5),
    ),
    labelLarge: _baseTextTheme.labelLarge?.copyWith(
      color: AppColors.textPrimary,
    ),
    labelMedium: _baseTextTheme.labelMedium?.copyWith(
      color: AppColors.textPrimary.withValues(alpha: 0.5),
    ),
  );

  static final TextTheme darkTextTheme = _baseTextTheme.copyWith(
    headlineLarge: _baseTextTheme.headlineLarge?.copyWith(
      color: AppColors.textWhite,
    ),
    headlineMedium: _baseTextTheme.headlineMedium?.copyWith(
      color: AppColors.textWhite,
    ),
    headlineSmall: _baseTextTheme.headlineSmall?.copyWith(
      color: AppColors.textWhite,
    ),
    titleLarge: _baseTextTheme.titleLarge?.copyWith(color: AppColors.textWhite),
    titleMedium: _baseTextTheme.titleMedium?.copyWith(
      color: AppColors.textWhite,
    ),
    titleSmall: _baseTextTheme.titleSmall?.copyWith(color: AppColors.textWhite),
    bodyLarge: _baseTextTheme.bodyLarge?.copyWith(color: AppColors.textWhite),
    bodyMedium: _baseTextTheme.bodyMedium?.copyWith(color: AppColors.textWhite),
    bodySmall: _baseTextTheme.bodySmall?.copyWith(
      color: AppColors.textWhite.withValues(alpha: 0.5),
    ),
    labelLarge: _baseTextTheme.labelLarge?.copyWith(color: AppColors.textWhite),
    labelMedium: _baseTextTheme.labelMedium?.copyWith(
      color: AppColors.textWhite.withValues(alpha: 0.5),
    ),
  );
}
