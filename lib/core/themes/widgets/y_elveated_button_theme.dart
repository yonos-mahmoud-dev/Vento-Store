import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';

class YElveatedButtonTheme {
  YElveatedButtonTheme._();

  /// --- Light Elevated Button Customizations
  static ElevatedButtonThemeData lightElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.symmetric(vertical: YSizes.buttonHeight),
      backgroundColor: YAppColors.darkContainer,
      foregroundColor: YAppColors.textWhite,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        color: Colors.white,
        letterSpacing: 1.2,
        fontFamily: 'NotoSans',
      ),
    ),
  );

  /// --- Light Elevated Button Customizations
  static ElevatedButtonThemeData darkElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.symmetric(vertical: YSizes.buttonHeight),
      backgroundColor: YAppColors.primaryGold,
      foregroundColor: YAppColors.textWhite,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        color: Colors.white,
        letterSpacing: 1.2,
        fontFamily: 'NotoSans',
      ),
    ),
  );
}
