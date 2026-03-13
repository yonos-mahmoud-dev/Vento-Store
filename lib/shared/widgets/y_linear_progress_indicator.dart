import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_sizes.dart';

class YLinearProgressIndicator extends StatelessWidget {
  const YLinearProgressIndicator({
    super.key,
    required this.value,
    required this.text,
  });
  final double value;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: value,
          minHeight: 7,
          borderRadius: BorderRadius.circular(12),
          backgroundColor: YAppColors.borderLightecondary,
          color: YAppColors.primaryGold,
        ),
        const SizedBox(height: YSizes.spaceBtwItems),
        Center(child: Text(text, style: Theme.of(context).textTheme.bodyLarge)),
      ],
    );
  }
}
