import 'package:flutter/material.dart';

class YAppColors {
  // App theme colors
  static const Color primaryGold = Color(0xFFA8842E);
  static const Color secondaryGold = Color(0xFFC6A75E);
  static const Color accentGold = Color(0xFFE8D8B5);

  // Grediant Color
  static const Gradient goldGredint = LinearGradient(
    colors: [
      Color.fromARGB(255, 171, 142, 61),
      Color.fromARGB(255, 110, 78, 9),
    ],
    tileMode: TileMode.mirror,
    begin: AlignmentGeometry.topCenter,
    end: AlignmentGeometry.bottomCenter,
  );

  // Dashboard Specific Colors
  static const Color dashboardAppbarBackground = Color(0xFF4B68FF);

  // Text colors
  static const Color textLightPrimary = Color(0xFF1A1A1A);
  static const Color textLightSecondary = Color(0xFF6F6F6F);
  static const Color textDarkPrimary = Color(0xFFF5F5F5);
  static const Color textDarkSecondary = Color(0xFF6F6F6F);
  static const Color textWhite = Colors.white;

  static const Color disabledTextLight = Color(0xFFD1D5DB);
  static const Color disabledBackgroundLight = Color(0xFFF3F4F6);

  static const Color disabledTextDark = textLightSecondary;
  static const Color disabledBackgroundDark = Color(0xFF222A3D);

  // Background colors
  static const Color primarylightBg = Color(0xFFF6F1E8);
  static const Color secondarylightBg = Color(0xFFF6F6F6);
  static const Color primaryDarkBg = Color(0xFF121212);
  static const Color secondaryDarkBg = Color(0xFF1E1E1E);

  // Background Container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Color(0xFF1C1C1C);
  static const Color cardBackgroundColor = Color(0xFFF7F5F1);

  // Button colors
  static const Color buttonPrimary = primaryGold;
  static const Color buttonSecondary = secondaryGold;
  static const Color buttonDisabled = disabledBackgroundLight;

  // -- ON-BOARDING COLORS
  static const Color onBoardingPage1Color = Colors.white;
  static const Color onBoardingPage2Color = Color(0xfffddcdf);
  static const Color onBoardingPage3Color = Color(0xffffdcbd);

  // Icon colors
  static const Color iconPrimaryLight = Color(0xFF284C76);
  static const Color iconSecondaryLight = Color(0xFF9CA3AF);
  static const Color iconPrimaryDark = Color(0xFFFFFFFF);
  static const Color iconSecondaryDark = Color(0xFF9CA3AF);

  // Border colors
  static const Color borderDarkPrimary = primaryGold;
  static const Color borderDarkSecondary = secondaryGold;
  static const Color borderLightPrimary = Color(0xFFD1D5DB); // Gray 30
  static const Color borderLightecondary = Color(0xFF9CA3AF); // Gray 40

  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);
}
