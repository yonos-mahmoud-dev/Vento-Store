import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/utils/device_utility.dart';
import '../../../../core/utils/helpers/helper_functions.dart';
import '../viewmodel/onborading_view_model.dart';

class DoNavigations extends StatelessWidget {
  const DoNavigations({super.key});

  @override
  Widget build(BuildContext context) {
    final onboadingViewModel = Provider.of<OnboradingViewModel>(context);
    final isDark = YHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: YDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: YSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: onboadingViewModel.pageController,
        onDotClicked: (index) => onboadingViewModel.dotNavigationClicked(index),
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark
              ? YAppColors.primaryGold
              : YAppColors.darkContainer,
          dotColor: isDark
              ? YAppColors.accentGold
              : YAppColors.textLightSecondary,
          expansionFactor: 6,
          dotHeight: 10,
        ),
      ),
    );
  }
}
