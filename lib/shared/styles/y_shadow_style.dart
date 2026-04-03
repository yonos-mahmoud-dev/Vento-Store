import 'package:flutter/painting.dart';
import 'package:vento_store/core/constants/app_colors.dart';

class YShadowStyle {
  YShadowStyle._();
  static final verticalProductShadow = BoxShadow(
    color: YAppColors.secondaryDarkBg.withAlpha(100),
    blurRadius: 5,
    spreadRadius: 1,
    offset: const Offset(0, 1),
  );
  static final horizantalProductShadow = BoxShadow(
    color: YAppColors.secondaryDarkBg.withAlpha(100),
    blurRadius: 7,
    spreadRadius: 2,
    offset: const Offset(0, 2),
  );
}
