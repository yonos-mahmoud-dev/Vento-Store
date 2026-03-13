import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class YCheckBoxTheme {
  YCheckBoxTheme._();

  /// --- Light Check Theme Customizations
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

    checkColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return YAppColors.primarylightBg;
      } else {
        return YAppColors.secondaryDarkBg;
      }
    }),
    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return YAppColors.primaryGold;
      } else {
        return YAppColors.textWhite;
      }
    }),
  );

  /// --- Dark Check Theme Customizations
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

    fillColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return YAppColors.primaryGold;
      } else {
        return Colors.transparent;
      }
    }),
    checkColor: WidgetStateColor.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return YAppColors.primarylightBg;
      } else {
        return Colors.black;
      }
    }),
  );
}
