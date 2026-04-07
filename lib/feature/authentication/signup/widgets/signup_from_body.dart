import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/feature/authentication/signup/viewmodel/signup_view_model.dart';
import 'package:vento_store/shared/widgets/text_form/y_text_form_field.dart';

class YSignUpFromBody extends StatelessWidget {
  const YSignUpFromBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // -- Email
          const YTextFromField(
            lableText: YAppString.email,
            prfIcon: Icon(Iconsax.user),
          ),
          const SizedBox(height: YSizes.spaceBtwInputFields),
          // -- Password
          const YTextFromField(
            scureText: true,
            lableText: YAppString.password,
            prfIcon: Icon(Iconsax.password_check),
            sufIcon: Icon(Iconsax.eye_slash),
          ),

          const SizedBox(height: YSizes.spaceBtwSections),

          /// -- sign in button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () => context.read<SignupViewModel>().verifyEmail(),
              child: const Text(YAppString.signUp),
            ),
          ),
          const SizedBox(height: YSizes.spaceBtwInputFields),

          /// -- create account button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: OutlinedButton(
              onPressed: () => context.read<SignupViewModel>().signIn(),
              child: const Text(YAppString.signIn),
            ),
          ),

          const SizedBox(height: YSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
