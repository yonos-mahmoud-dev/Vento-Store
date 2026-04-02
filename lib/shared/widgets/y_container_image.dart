import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';

class YContainerImage extends StatelessWidget {
  const YContainerImage({
    super.key,
    this.width,
    this.height,
    required this.applayImgRaduis,
    this.border,
    this.bgColor,
    required this.fit,
    this.padding,
    this.onPressed,
    required this.imgUrl,
    this.isNetWorkImg = false,
  });

  final double? width, height;
  final String imgUrl;
  final bool applayImgRaduis;
  final BoxBorder? border;
  final Color? bgColor;
  final bool? isNetWorkImg;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: applayImgRaduis
              ? BorderRadius.circular(YSizes.cardRadiusLg)
              : null,
          border: border,
          color: bgColor,
          boxShadow: [
            BoxShadow(
              color: YAppColors.darkContainer.withAlpha(50),
              blurRadius: 10,
              // spreadRadius: YSizes.xs,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: applayImgRaduis
              ? BorderRadius.circular(YSizes.cardRadiusLg)
              : BorderRadius.zero,
          child: Image(
            image: isNetWorkImg!
                ? NetworkImage(imgUrl)
                : AssetImage(imgUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
