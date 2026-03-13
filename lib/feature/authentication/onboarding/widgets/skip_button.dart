import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/utils/device_utility.dart';
import '../viewmodel/onborading_view_model.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: YDeviceUtils.getAppBarHeight(),
      right: YSizes.defaultSpace,
      child: TextButton(
        onPressed: () => context.read<OnboradingViewModel>().skipButtonClicke(),
        child: Text(
          YAppString.skipBtn,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
