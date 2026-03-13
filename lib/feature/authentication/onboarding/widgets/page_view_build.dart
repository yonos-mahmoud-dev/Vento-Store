import 'package:flutter/material.dart';
import 'package:vento_store/feature/authentication/onboarding/models/onboarding_model.dart';

import '../../../../core/constants/app_sizes.dart';

import '../../../../core/utils/helpers/helper_functions.dart';

class PageViewBuild extends StatelessWidget {
  const PageViewBuild({super.key, required this.model});
  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: YSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(model.image!),
            width: YHelperFunctions.screenWidth(context) * 0.8,
            height: YHelperFunctions.screenHeight(context) * 0.6,
          ),
          const SizedBox(height: YSizes.spaceBtwItems),
          Text(
            model.title!.toUpperCase(),
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: YSizes.spaceBtwItems / 2),
          Text(
            model.subTitle!,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
