import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class YAppbarTheme {
  YAppbarTheme._();

  /// --- Light appbar Theme Customizations
  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: YAppColors.primarylightBg,
    iconTheme: IconThemeData(color: YAppColors.primaryDarkBg),
    actionsIconTheme: IconThemeData(color: YAppColors.primaryDarkBg),
  );

  /// --- dark appbar Theme Customizations
  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    elevation: 0.0,
    centerTitle: true,
    backgroundColor: YAppColors.primaryDarkBg,
    iconTheme: IconThemeData(color: YAppColors.primarylightBg),
    actionsIconTheme: IconThemeData(color: YAppColors.primarylightBg),
  );
}
