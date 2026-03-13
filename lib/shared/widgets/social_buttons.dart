import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key, required this.logoImage});

  final String logoImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: YAppColors.borderLightPrimary),
        color: YAppColors.textWhite,
        boxShadow: [
          BoxShadow(
            color: YAppColors.darkContainer.withAlpha(50),
            offset: const Offset(1, 1),
            blurStyle: BlurStyle.normal,
            blurRadius: 4,
          ),
          BoxShadow(
            color: YAppColors.darkContainer.withAlpha(50),
            offset: const Offset(-1, -1),
            blurStyle: BlurStyle.normal,
            blurRadius: 5,
          ),
        ],
      ),
      // ignore: prefer_const_constructors
      child: Image(image: AssetImage(logoImage)),
    );
  }
}
