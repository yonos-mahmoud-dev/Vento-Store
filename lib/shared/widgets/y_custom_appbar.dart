import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/utils/device_utility.dart';

class YCustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const YCustomAppbar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.showBackArrow = false,
    this.onLeadingPressed,
  });

  final Widget? title;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final bool showBackArrow;
  final VoidCallback? onLeadingPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: title,
      elevation: 0.0,
      centerTitle: false,

      leading: showBackArrow
          ? IconButton(
              onPressed: () {
                Navigator.canPop(context);
              },
              icon: const Icon(Iconsax.arrow_left),
            )
          : leadingIcon != null
          ? IconButton(onPressed: onLeadingPressed, icon: Icon(leadingIcon))
          : null,
      backgroundColor: Colors.transparent,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(YDeviceUtils.getAppBarHeight());
}
