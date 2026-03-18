import 'package:flutter/material.dart';
import 'package:vento_store/feature/authentication/signup/widgets/signup_form_header.dart';
import 'package:vento_store/shared/styles/y_spacing_style.dart';
import 'package:vento_store/shared/widgets/y_linear_progress_indicator.dart';
import 'package:vento_store/shared/widgets/y_text_form_field.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';

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
                headerTitle: 'Tell Us About Your Self!',
                headerSubTitle:
                    'We use this info to create your profile\nand keep it secure.',
              ),
              const SizedBox(height: YSizes.spaceBtwSections),
              const SizedBox(child: YTextFromField(lableText: 'Full Name')),
              const SizedBox(height: YSizes.spaceBtwInputFields),
              const YTextFromField(
                lableText: 'Date of Birth',
                sufIcon: Icon(Icons.calendar_month),
              ),
              const SizedBox(height: YSizes.spaceBtwInputFields),
              const YTextFromField(
                lableText: 'Country Regoin',
                sufIcon: Icon(Icons.keyboard_arrow_down_sharp),
              ),
              const SizedBox(height: YSizes.spaceBtwInputFields),
              const YTextFromField(
                lableText: 'Address',
                sufIcon: Icon(Icons.location_on),
              ),
              const SizedBox(height: YSizes.spaceBtwInputFields),
              const YTextFromField(lableText: 'Phone Number'),
              const SizedBox(height: YSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
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
