import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../shared/widgets/social_buttons.dart';
import '../../../../shared/widgets/y_divider.dart';

class FormFooter extends StatelessWidget {
  const FormFooter({super.key});

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
