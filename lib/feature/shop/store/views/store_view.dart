import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/shared/widgets/cutom_appbar/y_custom_appbar.dart';
import 'package:vento_store/shared/widgets/icons/y_cart_counter_icon.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YCustomAppbar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: YSizes.defaultSpace),
            child: YCartCounterIcon(onPressedIcon: () {}, iconSize: 26),
          ),
        ],
      ),
      // body:
    );
  }
}
