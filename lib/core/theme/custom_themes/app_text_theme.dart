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

  static TextTheme lightTextTheme = _baseTextTheme.copyWith(
    headlineLarge: _baseTextTheme.headlineLarge?.copyWith(color: Colors.black),
    headlineMedium: _baseTextTheme.headlineMedium?.copyWith(
      color: Colors.black,
    ),
    headlineSmall: _baseTextTheme.headlineSmall?.copyWith(color: Colors.black),
    titleLarge: _baseTextTheme.titleLarge?.copyWith(color: Colors.black),
    titleMedium: _baseTextTheme.titleMedium?.copyWith(color: Colors.black),
    titleSmall: _baseTextTheme.titleSmall?.copyWith(color: Colors.black),
    bodyLarge: _baseTextTheme.bodyLarge?.copyWith(color: Colors.black),
    bodyMedium: _baseTextTheme.bodyMedium?.copyWith(color: Colors.black),
    bodySmall: _baseTextTheme.bodySmall?.copyWith(
      color: Colors.black.withValues(alpha: 0.5),
    ),
    labelLarge: _baseTextTheme.labelLarge?.copyWith(color: Colors.black),
    labelMedium: _baseTextTheme.labelMedium?.copyWith(
      color: Colors.black.withValues(alpha: 0.5),
    ),
  );

  static TextTheme darkTextTheme = _baseTextTheme.copyWith(
    headlineLarge: _baseTextTheme.headlineLarge?.copyWith(color: Colors.white),
    headlineMedium: _baseTextTheme.headlineMedium?.copyWith(
      color: Colors.white,
    ),
    headlineSmall: _baseTextTheme.headlineSmall?.copyWith(color: Colors.white),
    titleLarge: _baseTextTheme.titleLarge?.copyWith(color: Colors.white),
    titleMedium: _baseTextTheme.titleMedium?.copyWith(color: Colors.white),
    titleSmall: _baseTextTheme.titleSmall?.copyWith(color: Colors.white),
    bodyLarge: _baseTextTheme.bodyLarge?.copyWith(color: Colors.white),
    bodyMedium: _baseTextTheme.bodyMedium?.copyWith(color: Colors.white),
    bodySmall: _baseTextTheme.bodySmall?.copyWith(
      color: Colors.white.withValues(alpha: 0.5),
    ),
    labelLarge: _baseTextTheme.labelLarge?.copyWith(color: Colors.white),
    labelMedium: _baseTextTheme.labelMedium?.copyWith(
      color: Colors.white.withValues(alpha: 0.5),
    ),
  );
}
