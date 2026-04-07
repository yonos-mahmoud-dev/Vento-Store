import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/feature/authentication/signup/viewmodel/signup_view_model.dart';
import 'package:vento_store/feature/authentication/signup/widgets/signup_form_header.dart';
import 'package:vento_store/shared/styles/y_spacing_style.dart';
import 'package:vento_store/shared/widgets/progress_indecator/y_linear_progress_indicator.dart';
import 'package:vento_store/shared/widgets/text_form/y_text_form_field.dart';

class AboutYourself extends StatelessWidget {
  const AboutYourself({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyle.paddingWithDefaultWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const YLinearProgressIndicator(value: 0.6, text: '3/5'),
              const SignUpFromHeader(
                headerTitle: YAppString.aboutTitle,
                headerSubTitle: YAppString.aboutSubTitle,
              ),
              const SizedBox(height: YSizes.spaceBtwSections),
              const SizedBox(
                child: YTextFromField(lableText: YAppString.fullName),
              ),
              const SizedBox(height: YSizes.spaceBtwInputFields),
              const YTextFromField(
                lableText: YAppString.dataOfBirth,
                sufIcon: Icon(Icons.calendar_month),
              ),
              const SizedBox(height: YSizes.spaceBtwInputFields),
              const YTextFromField(
                lableText: YAppString.country,
                sufIcon: Icon(Icons.keyboard_arrow_down_sharp),
              ),
              const SizedBox(height: YSizes.spaceBtwInputFields),
              const YTextFromField(
                lableText: YAppString.address,
                sufIcon: Icon(Icons.location_on),
              ),
              const SizedBox(height: YSizes.spaceBtwInputFields),
              const YTextFromField(lableText: YAppString.phoneNumber),
              const SizedBox(height: YSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () =>
                      context.read<SignupViewModel>().vreifyAboutInfo(),
                  child: const Text(YAppString.continues),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
