import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/utils/helpers/helper_functions.dart';

class YBrandImgContainer extends StatelessWidget {
  const YBrandImgContainer({
    super.key,
    this.width = 56,
    this.height = 56,
    required this.imageUrl,
    required this.isNetWorkImg,
  });
  final double? width;
  final double? height;
  final String imageUrl;
  final bool isNetWorkImg;

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Image(
        image: isNetWorkImg
            ? NetworkImage(imageUrl)
            : AssetImage(imageUrl) as ImageProvider,
        fit: BoxFit.contain,
        color: isDark ? YAppColors.primarylightBg : YAppColors.primaryDarkBg,
      ),
    );
  }
}
