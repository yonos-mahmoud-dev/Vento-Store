import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class YTextFormFeild {
  YTextFormFeild._();

  /// --- Light TextFormFeild Customizations
  static InputDecorationTheme lightInputDecoration = InputDecorationTheme(
    errorMaxLines: 2,
    helperMaxLines: 2,
    hintMaxLines: 2,
    constraints: const BoxConstraints(maxHeight: 56.0, minHeight: 56.0),
    contentPadding: const EdgeInsets.all(8),
    floatingLabelStyle: const TextStyle(color: YAppColors.textLightPrimary),
    iconColor: YAppColors.borderLightecondary,
    errorStyle: const TextStyle(
      color: YAppColors.error,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),

    labelStyle: const TextStyle(
      color: YAppColors.textDarkSecondary,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    outlineBorder: const BorderSide(
      color: YAppColors.borderLightecondary,
      width: 1.2,
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: YAppColors.borderLightecondary,
        width: 1.2,
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: YAppColors.borderLightecondary,
        width: 1.2,
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: YAppColors.borderDarkSecondary,
        width: 1.2,
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: YAppColors.error, width: 1.2),
      borderRadius: BorderRadius.circular(16.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: YAppColors.error, width: 1.2),
      borderRadius: BorderRadius.circular(16.0),
    ),
  );

  /// --- Dark TextFormFeild Customizations
  static InputDecorationTheme darkInputDecoration = InputDecorationTheme(
    errorMaxLines: 2,
    helperMaxLines: 2,
    hintMaxLines: 2,
    constraints: const BoxConstraints(maxHeight: 56.0, minHeight: 56.0),
    contentPadding: const EdgeInsets.all(8),
    floatingLabelStyle: const TextStyle(color: YAppColors.textDarkPrimary),
    iconColor: YAppColors.borderDarkPrimary,
    errorStyle: const TextStyle(
      color: YAppColors.error,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),

    labelStyle: const TextStyle(
      color: YAppColors.textDarkPrimary,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    outlineBorder: const BorderSide(
      color: YAppColors.borderDarkPrimary,
      width: 1.2,
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
        color: YAppColors.borderDarkPrimary,
        width: 1.2,
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: YAppColors.borderDarkPrimary,
        width: 1.2,
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: YAppColors.borderLightPrimary,
        width: 1.2,
      ),
      borderRadius: BorderRadius.circular(16.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: YAppColors.error, width: 1.2),
      borderRadius: BorderRadius.circular(16.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: YAppColors.error, width: 1.2),
      borderRadius: BorderRadius.circular(16.0),
    ),
  );
}
