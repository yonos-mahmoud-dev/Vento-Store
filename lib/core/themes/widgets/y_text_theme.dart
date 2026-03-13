import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';

/* -- Light & Dark Text Themes -- */
class YTextTheme {
  YTextTheme._(); //To avoid creating instances

  /* -- Light Text Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w800,
      color: YAppColors.textLightPrimary,
      letterSpacing: 1.2,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: YAppColors.textLightPrimary,
      letterSpacing: 1.2,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: YAppColors.textLightPrimary,
      letterSpacing: 1.2,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: YAppColors.textLightSecondary,
      letterSpacing: 1.2,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: YAppColors.textLightSecondary,
      letterSpacing: 1.2,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: YAppColors.textLightSecondary,
      letterSpacing: 1.2,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: YAppColors.textLightSecondary,
      letterSpacing: 1.2,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: YAppColors.textLightSecondary,
      letterSpacing: 1.2,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: YAppColors.textLightSecondary,
      letterSpacing: 1.2,
    ),
  );

  /* -- Dark Text Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w800,
      color: YAppColors.textDarkPrimary,
      letterSpacing: 1.2,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: YAppColors.textDarkPrimary,
      letterSpacing: 1.2,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: YAppColors.textDarkPrimary,
      letterSpacing: 1.2,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: YAppColors.textDarkSecondary,
      letterSpacing: 1.2,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: YAppColors.textDarkSecondary,
      letterSpacing: 1.2,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: YAppColors.textDarkSecondary,
      letterSpacing: 1.2,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: YAppColors.textDarkSecondary,
      letterSpacing: 1.2,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: YAppColors.textDarkSecondary,
      letterSpacing: 1.2,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: YAppColors.textDarkSecondary,
      letterSpacing: 1.2,
    ),
  );
}
