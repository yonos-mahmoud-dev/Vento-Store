import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class YDivider extends StatelessWidget {
  const YDivider({super.key, this.dividerText});

  final String? dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Divider(
            color: YAppColors.borderLightecondary,
            indent: 60,
            endIndent: 7,
            thickness: 0.6,
          ),
        ),
        Text(dividerText!, style: Theme.of(context).textTheme.bodyMedium),
        const Flexible(
          child: Divider(
            color: YAppColors.borderLightecondary,
            indent: 7,
            endIndent: 60,
            thickness: 0.6,
          ),
        ),
      ],
    );
  }
}
