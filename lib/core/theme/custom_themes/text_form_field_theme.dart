import 'package:flutter/material.dart';

class TextFormFieldTheme {
  TextFormFieldTheme._();

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.grey,
        errorStyle: const TextStyle(fontStyle: FontStyle.normal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1.0, color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1.0, color: Colors.grey),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1.0, color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1.0, color: Colors.orange),
        ),
      );
  static final lightInputDecorationTheme = _inputDecorationTheme.copyWith(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1.0, color: Colors.grey),
    ),
    labelStyle: const TextStyle(fontSize: 14.0, color: Colors.black),
    hintStyle: const TextStyle(fontSize: 14.0, color: Colors.black),
  );
  static final darkInputDecorationTheme = _inputDecorationTheme.copyWith(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1.0, color: Colors.grey),
    ),
    labelStyle: const TextStyle(fontSize: 14.0, color: Colors.white),
    hintStyle: const TextStyle(fontSize: 14.0, color: Colors.white),
  );
}
