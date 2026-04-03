import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/shared/widgets/icons/y_cart_counter_icon.dart';
import 'package:vento_store/shared/widgets/y_custom_appbar.dart';

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
              'Good day for shopping',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Text(
              'Yonos Mahmoud',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
        actions: [YCartCounterIcon(onPressedIcon: () {})],
      ),
    );
  }
}
