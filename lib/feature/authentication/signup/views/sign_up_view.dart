import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/feature/authentication/signup/widgets/signup_form_footer.dart';
import 'package:vento_store/feature/authentication/signup/widgets/signup_form_header.dart';
import 'package:vento_store/feature/authentication/signup/widgets/signup_from_body.dart';
import 'package:vento_store/shared/styles/y_spacing_style.dart';
import 'package:vento_store/shared/widgets/progress_indecator/y_linear_progress_indicator.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyle.paddingWithDefaultWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// --- LinearProgressIndicator
              YLinearProgressIndicator(value: 0.2, text: 'Step 1/5'),
              SizedBox(height: YSizes.sm),

              /// --- Form Header
              SignUpFromHeader(
                headerTitle: YAppString.signUpTitle,
                headerSubTitle: YAppString.signUpSubTitle,
              ),
              SizedBox(height: YSizes.spaceBtwSections),

              /// --- Form Body
              YSignUpFromBody(),

              /// --- From Footer
              YSignupFormFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
