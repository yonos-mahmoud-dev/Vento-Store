import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../helpers/helper_functions.dart';

class TLoaders {
  static void hideSnackBar(BuildContext context) =>
      ScaffoldMessenger.of(context).hideCurrentSnackBar();

  static void customToast(BuildContext context, {required message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: YHelperFunctions.isDarkMode(context)
                ? YAppColors.darkContainer.withValues(alpha: 0.9)
                : YAppColors.borderLightecondary.withValues(alpha: 0.9),
          ),
          child: Center(
            child: Text(message, style: Theme.of(context).textTheme.bodySmall),
          ),
        ),
      ),
    );
  }

  static void successSnackBar(
    BuildContext context, {
    required content,
    duration = 3,
  }) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: content, duration: duration));
  }

  static void warningSnackBar(
    BuildContext context, {
    required content,
    duration = 3,
  }) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: content, duration: duration));
  }

  static void errorSnackBar(
    BuildContext context, {
    required content,
    duration = 3,
  }) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: content, duration: duration));
  }
}
