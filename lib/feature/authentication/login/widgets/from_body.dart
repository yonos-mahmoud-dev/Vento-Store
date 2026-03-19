import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/core/services/navigation_services.dart';
import 'package:vento_store/routes/app_routes.dart';
import 'package:vento_store/shared/widgets/y_text_form_field.dart';

class FromBody extends StatelessWidget {
  const FromBody({super.key});

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
          const SizedBox(height: YSizes.spaceBtwInputFields / 2),

          /// -- keep me logged in and forgote password
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              Text(
                YAppString.rememberMe,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  YAppString.forgotPass,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: YAppColors.primaryGold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: YSizes.spaceBtwSections),

          /// -- sign in button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                NavigationServices.goTo(AppRoutes.bottomNavigation);
              },
              child: const Text(YAppString.signIn),
            ),
          ),
          const SizedBox(height: YSizes.spaceBtwInputFields),

          /// -- create account button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: OutlinedButton(
              onPressed: () {
                NavigationServices.goTo(AppRoutes.signUp);
              },
              child: const Text(YAppString.createAccount),
            ),
          ),

          const SizedBox(height: YSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
