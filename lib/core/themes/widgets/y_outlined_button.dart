import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';

import '../../constants/app_sizes.dart';

class YOutlinedButton {
  YOutlinedButton._();

  /// ---  OutLinedButton Customizations
  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: YAppColors.primaryGold,
      side: const BorderSide(color: YAppColors.buttonSecondary),
      padding: const EdgeInsets.symmetric(vertical: YSizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,

        letterSpacing: 1.2,
        fontFamily: 'NotoSans',
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: YAppColors.textDarkPrimary,
      side: const BorderSide(color: YAppColors.borderLightPrimary),
      padding: const EdgeInsets.symmetric(vertical: YSizes.buttonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18.0,

        letterSpacing: 1.2,
        fontFamily: 'NotoSans',
      ),
    ),
  );
}
