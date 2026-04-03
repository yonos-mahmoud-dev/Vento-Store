import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';

class YFavoritIcon extends StatelessWidget {
  const YFavoritIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(YSizes.borderRadiusMd),
        color: YAppColors.secondaryGold.withAlpha(200),
      ),
      child: const Center(
        child: Icon(Iconsax.heart5, color: YAppColors.textWhite),
      ),
    );
  }
}
