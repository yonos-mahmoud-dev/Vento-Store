import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/core/services/navigation_services.dart';
import 'package:vento_store/core/utils/helpers/exports.dart';
import 'package:vento_store/feature/authentication/signup/widgets/signup_form_header.dart';
import 'package:vento_store/routes/app_routes.dart';
import 'package:vento_store/shared/styles/y_spacing_style.dart';
import 'package:vento_store/shared/widgets/progress_indecator/y_linear_progress_indicator.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    int i = 1;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyle.paddingWithDefaultWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// --- LinearProgressIndicator value update
              const YLinearProgressIndicator(value: 0.4, text: 'Step 2/5'),
              const SizedBox(height: YSizes.sm),

              /// --- verif  title & subTitle
              const SignUpFromHeader(
                headerTitle: YAppString.verifyEmailTitle,
                headerSubTitle: YAppString.verifyEmailSubTitle,
              ),
              const SizedBox(height: YSizes.spaceBtwSections),

              ///--- verify code will be enter here
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (i = 1; i <= 5; i++)
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: isDark
                              ? YAppColors.primaryGold
                              : YAppColors.primaryDarkBg,
                          width: 1.2,
                        ),
                      ),
                      child: Text(
                        '$i',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: YSizes.defaultSpace),

              /// --- Resend the code
              Row(
                children: [
                  Text(
                    YAppString.dontRecived,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(width: YSizes.xs),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      YAppString.tapToResend,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: YAppColors.primaryGold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: YSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () =>
                      NavigationServices.goTo(AppRoutes.aboutYourself),
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
