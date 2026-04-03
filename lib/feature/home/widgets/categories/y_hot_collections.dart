import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/utils/helpers/exports.dart';
import 'package:vento_store/shared/styles/y_shadow_style.dart';
import 'package:vento_store/shared/widgets/container/y_dicount_containr.dart';
import 'package:vento_store/shared/widgets/icons/y_favorit_icon.dart';
import 'package:vento_store/shared/widgets/container/y_container_image.dart';

class YHotCollections extends StatelessWidget {
  const YHotCollections({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(YSizes.borderRadiusMd),
        color: isDark ? YAppColors.primaryDarkBg : YAppColors.textWhite,
        boxShadow: [YShadowStyle.verticalProductShadow],
      ),
      child: Column(
        children: [
          /// --- Thumbal image & wishList Button & Discount
          Container(
            height: 180,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(YSizes.borderRadiusMd),
              color: isDark
                  ? YAppColors.secondaryDarkBg
                  : YAppColors.borderLightecondary,
            ),
            child: const Stack(
              children: [
                // -- image thumball
                YContainerImage(
                  width: double.maxFinite,
                  applayImgRaduis: true,
                  fit: BoxFit.contain,
                  // bgColor: YAppColors.lightContainer,
                  imgUrl: 'assets/images/products/leather_jacket_3.png',
                ),

                // -- discount
                Positioned(top: 9, left: 9, child: YDiscountContainr()),
                // -- Favorite icon
                Positioned(top: 9, right: 9, child: YFavoritIcon()),
              ],
            ),
          ),
          const SizedBox(height: YSizes.spaceBtwItems),

          /// --- Product Details
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Green Nike Air Shoes',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: YSizes.spaceBtwItems / 2),
                Row(
                  children: [
                    Text('Nike', style: Theme.of(context).textTheme.bodySmall),
                    // ignore: prefer_const_constructors
                    Icon(
                      Iconsax.verify5,
                      size: YSizes.iconXs,
                      color: YAppColors.dashboardAppbarBackground,
                    ),
                  ],
                ),
                const SizedBox(height: YSizes.spaceBtwItems / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$159',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),

                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(22),
                          bottomRight: Radius.circular(8),
                        ),
                        color: isDark
                            ? YAppColors.primaryGold
                            : YAppColors.primaryDarkBg,
                      ),
                      child: const Center(
                        child: Icon(Iconsax.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
