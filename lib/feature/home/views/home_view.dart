import 'package:flutter/material.dart';
import 'package:vento_store/shared/widgets/y_cart_counter_icon.dart';
import 'package:vento_store/shared/widgets/y_custom_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          YCustomAppbar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
        ],
      ),
    );
  }
}
