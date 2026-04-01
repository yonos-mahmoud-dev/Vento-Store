import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/utils/helpers/exports.dart';

class YHomeCategories extends StatelessWidget {
  const YHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return Container(
            padding: const EdgeInsets.all(YSizes.sm),
            margin: const EdgeInsets.only(right: YSizes.sm),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(YSizes.cardRadiusLg),
              border: Border.all(
                width: 1.5,
                color: isDark
                    ? YAppColors.primaryGold
                    : YAppColors.textDarkSecondary,
              ),
            ),
            child: Center(
              child: Text(
                'Colthes',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: isDark
                      ? YAppColors.textDarkPrimary
                      : YAppColors.textLightPrimary,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
