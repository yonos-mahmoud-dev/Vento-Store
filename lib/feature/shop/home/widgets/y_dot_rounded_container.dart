import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/feature/shop/home/viewmodel/home_view_model.dart';

class YDotRoundedContainer extends StatelessWidget {
  const YDotRoundedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final homeViewMmodel = context.watch<HomeViewModel>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 5; i++)
          AnimatedContainer(
            margin: const EdgeInsets.only(left: 10),

            width: homeViewMmodel.currentSliderIndex == i ? 30 : 15,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(YSizes.borderRadiusMd),
              color: homeViewMmodel.currentSliderIndex == i
                  ? YAppColors.primaryGold
                  : YAppColors.textLightSecondary,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          ),
      ],
    );
  }
}
