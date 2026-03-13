import 'package:flutter/material.dart';
import 'package:vento_store/core/themes/widgets/y_text_theme.dart';
import 'package:vento_store/core/themes/widgets/y_check_box_theme.dart';
import 'package:vento_store/core/themes/widgets/y_elveated_button_theme.dart';

import '../constants/app_colors.dart';
import 'widgets/y_appbar_theme.dart';
import 'widgets/y_outlined_button.dart';
import 'widgets/y_text_form_feild.dart';

class YAppTheme {
  static final ThemeData ligthTheme = ThemeData(
    scaffoldBackgroundColor: YAppColors.primarylightBg,
    useMaterial3: true,
    fontFamily: 'NotoSans',
    brightness: Brightness.light,
    textTheme: YTextTheme.lightTextTheme,
    inputDecorationTheme: YTextFormFeild.lightInputDecoration,
    checkboxTheme: YCheckBoxTheme.lightCheckBoxTheme,
    elevatedButtonTheme: YElveatedButtonTheme.lightElevatedButton,
    outlinedButtonTheme: YOutlinedButton.lightOutlinedButtonTheme,
    appBarTheme: YAppbarTheme.lightAppBarTheme,
  );
  static final ThemeData dakTheme = ThemeData(
    scaffoldBackgroundColor: YAppColors.primaryDarkBg,
    useMaterial3: true,
    fontFamily: 'NotoSans',
    brightness: Brightness.dark,
    textTheme: YTextTheme.darkTextTheme,
    inputDecorationTheme: YTextFormFeild.darkInputDecoration,
    checkboxTheme: YCheckBoxTheme.darkCheckBoxTheme,
    elevatedButtonTheme: YElveatedButtonTheme.darkElevatedButton,
    outlinedButtonTheme: YOutlinedButton.darkOutlinedButtonTheme,
    appBarTheme: YAppbarTheme.darkAppBarTheme,
  );
}
