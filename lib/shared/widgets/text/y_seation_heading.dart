import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';

class YSeactionHeading extends StatelessWidget {
  const YSeactionHeading({
    super.key,
    required this.title,
    this.viewAll = 'View All',
    this.showViewAllBtn = true,
    this.onPreesed,
  });
  final String title;
  final String viewAll;
  final bool showViewAllBtn;
  final VoidCallback? onPreesed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        if (showViewAllBtn)
          TextButton(
            onPressed: onPreesed,
            child: Text(
              viewAll,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium!.apply(color: YAppColors.primaryGold),
            ),
          ),
      ],
    );
  }
}
