import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/utils/helpers/exports.dart';
import 'package:vento_store/shared/widgets/container/y_brand_img_container.dart';
import 'package:vento_store/shared/widgets/text/y_brand_title_with_verify_icon.dart';

class YBrandCategories extends StatelessWidget {
  const YBrandCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.all(YSizes.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(YSizes.borderRadiusMd),
        border: Border.all(
          color: isDark ? YAppColors.primaryGold : YAppColors.primaryDarkBg,
          width: 1.5,
        ),
      ),
      child: const Row(
        children: [
          /// --- Brand Image Logo
          YBrandImgContainer(
            imageUrl: 'assets/images/brands/nike.png',
            isNetWorkImg: false,
          ),
          SizedBox(width: YSizes.spaceBtwItems),

          /// --- Brand Title with Verify icon & SubTitle
          YBrandTitleWithVerifyIcon(),
        ],
      ),
    );
  }
}
