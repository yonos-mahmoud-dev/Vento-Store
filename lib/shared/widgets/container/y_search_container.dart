import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/utils/device_utility.dart';
import 'package:vento_store/core/utils/helpers/exports.dart';

class YSearchContainer extends StatelessWidget {
  const YSearchContainer({
    super.key,
    required this.searchIcon,
    required this.searchTitle,
  });

  final IconData? searchIcon;
  final String searchTitle;

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.all(YSizes.md),
      width: YDeviceUtils.getScreenWidth(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(YSizes.cardRadiusLg),
        border: Border.all(
          color: isDark ? YAppColors.primaryGold : YAppColors.textDarkSecondary,
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Icon(
            searchIcon,
            color: isDark
                ? YAppColors.lightContainer
                : YAppColors.textDarkSecondary,
          ),
          const SizedBox(width: YSizes.spaceBtwItems),
          Text(
            searchTitle,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: isDark
                  ? YAppColors.lightContainer
                  : YAppColors.textDarkSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
