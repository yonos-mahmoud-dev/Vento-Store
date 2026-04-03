import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';

class YDiscountContainr extends StatelessWidget {
  const YDiscountContainr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(YSizes.borderRadiusSm),
        color: YAppColors.secondaryGold.withAlpha(200),
      ),
      child: Center(
        child: Text(
          '75%',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.apply(color: Colors.white),
        ),
      ),
    );
  }
}
