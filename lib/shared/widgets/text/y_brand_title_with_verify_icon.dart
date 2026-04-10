import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';

class YBrandTitleWithVerifyIcon extends StatelessWidget {
  const YBrandTitleWithVerifyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Nike',
              style: Theme.of(context).textTheme.headlineMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(width: YSizes.spaceBtwItems / 2),
            const Icon(
              Iconsax.verify5,
              color: YAppColors.dashboardAppbarBackground,
              size: YSizes.iconMd - 5,
            ),
          ],
        ),
        const SizedBox(height: YSizes.spaceBtwItems / 4),
        Text(
          '265 Products',
          style: Theme.of(context).textTheme.bodyMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
