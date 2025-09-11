import 'package:flutter/material.dart';

class BottomSheetTheme {
  BottomSheetTheme._();

  static final _bottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(16.0),
    ),
  );

  static final lightbottomSheetTheme = _bottomSheetTheme.copyWith(
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
  );
  static final darkbottomSheetTheme = _bottomSheetTheme.copyWith(
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
  );
}
