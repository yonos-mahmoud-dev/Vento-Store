import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class YCartCounterIcon extends StatelessWidget {
  const YCartCounterIcon({super.key, required this.onPressedIcon});

  final VoidCallback onPressedIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressedIcon,
          icon: const Icon(Iconsax.shopping_bag, size: 34),
        ),
        Positioned(
          right: 2,
          child: Container(
            alignment: Alignment.center,
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                '10',
                style: Theme.of(context).textTheme.labelSmall!.apply(
                  color: Colors.white,
                  fontSizeFactor: 0.9,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
