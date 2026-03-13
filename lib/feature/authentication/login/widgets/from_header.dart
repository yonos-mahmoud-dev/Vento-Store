import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class FromHeader extends StatelessWidget {
  const FromHeader({
    super.key,
    required this.headerLogoImg,
    required this.headerTitle,
    required this.headerSubTitle,
  });

  final String headerLogoImg;
  final String headerTitle, headerSubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(headerLogoImg), width: 80),
        const SizedBox(height: YSizes.sm),
        Text(
          headerTitle,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(letterSpacing: 0),
        ),
        const SizedBox(height: YSizes.spaceBtwItems / 2),
        Text(
          headerSubTitle,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
