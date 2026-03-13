import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_images.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/feature/authentication/login/widgets/form_footer.dart';
import 'package:vento_store/feature/authentication/login/widgets/from_body.dart';
import 'package:vento_store/feature/authentication/login/widgets/from_header.dart';
import 'package:vento_store/shared/styles/y_spacing_style.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// --- From Header Logo Image & title & subTitle
              FromHeader(
                headerLogoImg: YAppImages.appLogo2,
                headerTitle: YAppString.loginTitle,
                headerSubTitle: YAppString.loginSubTitle,
              ),

              SizedBox(height: YSizes.spaceBtwSections),

              /// --- From Body
              FromBody(),

              /// --- Form Footer
              FormFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
