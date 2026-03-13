import 'package:flutter/material.dart';

import '../../core/constants/app_sizes.dart';

class YSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: YSizes.appBarHeight,
    left: YSizes.defaultSpace,
    bottom: YSizes.defaultSpace,
    right: YSizes.defaultSpace,
  );
  static const EdgeInsetsGeometry paddingWithDefaultWidth = EdgeInsets.only(
    left: YSizes.defaultSpace,
    right: YSizes.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingOnlyVertical = EdgeInsets.symmetric(
    vertical: YSizes.defaultSpace,
  );

  static const EdgeInsetsGeometry paddingWithDefaultHeight = EdgeInsets.only(
    top: YSizes.defaultSpace,
    left: YSizes.defaultSpace,
    bottom: YSizes.defaultSpace,
    right: YSizes.defaultSpace,
  );
}
