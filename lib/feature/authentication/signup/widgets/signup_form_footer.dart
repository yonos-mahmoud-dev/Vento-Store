import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_images.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/shared/widgets/icons/social_buttons.dart';
import 'package:vento_store/shared/widgets/divider/y_divider.dart';

class YSignupFormFooter extends StatelessWidget {
  const YSignupFormFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        /// --- Divier and SocialButton sign in
        //-- Divier
        YDivider(dividerText: YAppString.continueWith),
        SizedBox(height: YSizes.spaceBtwSections),
        //-- Social Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialButtons(logoImage: YAppImages.gogoleLogo),
            SocialButtons(logoImage: YAppImages.facebookLogo),
            SocialButtons(logoImage: YAppImages.appleLogo),
          ],
        ),
      ],
    );
  }
}
