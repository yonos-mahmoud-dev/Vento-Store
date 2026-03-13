import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_images.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/feature/authentication/onboarding/models/onboarding_model.dart';
import 'package:vento_store/feature/authentication/onboarding/viewmodel/onborading_view_model.dart';
import 'package:vento_store/feature/authentication/onboarding/widgets/dot_navigations.dart';
import 'package:vento_store/feature/authentication/onboarding/widgets/next_button.dart';
import 'package:vento_store/feature/authentication/onboarding/widgets/page_view_build.dart';
import 'package:vento_store/feature/authentication/onboarding/widgets/skip_button.dart';

class OnboadingView extends StatelessWidget {
  const OnboadingView({super.key});

  @override
  Widget build(BuildContext context) {
    final onboadingViewModel = Provider.of<OnboradingViewModel>(context);

    return Scaffold(
      body: Stack(
        children: [
          /// --- Page Views
          PageView(
            controller: onboadingViewModel.pageController,
            onPageChanged: (value) =>
                onboadingViewModel.updateCurrentIndex(value),
            children: [
              /// -- image & title & subTitle
              PageViewBuild(
                model: OnboardingModel(
                  image: YAppImages.onBoardingImg1,
                  title: YAppString.onBoardingTitle1,
                  subTitle: YAppString.onBoardingSubTitle1,
                ),
              ),
              PageViewBuild(
                model: OnboardingModel(
                  image: YAppImages.onBoardingImg2,
                  title: YAppString.onBoardingTitle2,
                  subTitle: YAppString.onBoardingSubTitle2,
                ),
              ),
              PageViewBuild(
                model: OnboardingModel(
                  image: YAppImages.onBoardingImg3,
                  title: YAppString.onBoardingTitle3,
                  subTitle: YAppString.onBoardingSubTitle3,
                ),
              ),
            ],
          ),

          /// ---  Skip Button
          const SkipButton(),

          /// --- Next Button
          const NextButton(),

          /// --- Dot Navigations
          const DoNavigations(),
        ],
      ),
    );
  }
}
