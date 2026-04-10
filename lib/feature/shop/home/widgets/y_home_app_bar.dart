import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/shared/widgets/icons/y_cart_counter_icon.dart';
import 'package:vento_store/shared/widgets/cutom_appbar/y_custom_appbar.dart';

class YHomeAppBar extends StatelessWidget {
  const YHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: YSizes.sm),
      child: YCustomAppbar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              YAppString.homeTitle,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Text(
              YAppString.homeSubTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        actions: [YCartCounterIcon(onPressedIcon: () {})],
      ),
    );
  }
}
