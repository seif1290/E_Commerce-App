import 'package:e_commerce/core/theme/custom_themes/app_text_theme.dart';
import 'package:e_commerce/core/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce/core/theme/custom_themes/custom_app_bar_theme.dart';
import 'package:e_commerce/core/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce/core/theme/custom_themes/text_form_field_theme.dart';
import 'package:e_commerce/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.light,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: BottomSheetTheme.lightbottomSheetTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: CustomAppBarTheme.lightAppBartheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: const CircleBorder(),
      foregroundColor: AppColors.light,

      backgroundColor: AppColors.dark,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.dark,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: BottomSheetTheme.darkbottomSheetTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: CustomAppBarTheme.darkAppBartheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: const CircleBorder(),
      foregroundColor: AppColors.dark,
      backgroundColor: AppColors.buttonPrimary,
    ),
  );
}
