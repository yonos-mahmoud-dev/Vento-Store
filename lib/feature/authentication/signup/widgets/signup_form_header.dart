import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_sizes.dart';

class SignUpFromHeader extends StatelessWidget {
  const SignUpFromHeader({
    super.key,
    required this.headerTitle,
    required this.headerSubTitle,
  });

  final String headerTitle, headerSubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
