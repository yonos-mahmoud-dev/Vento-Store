import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/feature/authentication/onboarding/viewmodel/onborading_view_model.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/utils/device_utility.dart';
import '../../../../core/utils/helpers/helper_functions.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    final onboadingViewModel = Provider.of<OnboradingViewModel>(context);
    return Positioned(
      bottom: YDeviceUtils.getBottomNavigationBarHeight() + 40,
      right: onboadingViewModel.currentIndex == 2
          ? YSizes.defaultSpace
          : YSizes.defaultSpace * 1.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isDark
              ? YAppColors.primaryGold
              : YAppColors.darkContainer,
          foregroundColor: YAppColors.lightContainer,
          shape: const CircleBorder(),
          padding: onboadingViewModel.currentIndex == 2
              ? const EdgeInsets.all(25)
              : const EdgeInsets.all(10),
        ),
        onPressed: () =>
            context.read<OnboradingViewModel>().nextButtonCliked(context),
        child: onboadingViewModel.currentIndex == 2
            ? Text(
                YAppString.getStarted.toUpperCase(),
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(color: Colors.white),
              )
            : const Icon(Icons.keyboard_double_arrow_right, size: 50),
      ),
    );
  }
}
