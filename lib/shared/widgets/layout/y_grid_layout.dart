import 'package:flutter/material.dart';
import 'package:vento_store/core/constants/app_sizes.dart';

class YGridLayOut extends StatelessWidget {
  const YGridLayOut({
    super.key,
    required this.itemCount,
    this.mainAxisExtent,
    required this.itemBuilder,
    required this.scrollPhysics,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final ScrollPhysics scrollPhysics;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 276,
      child: GridView.builder(
        itemCount: itemCount,
        padding: EdgeInsets.zero,
        physics: scrollPhysics,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: YSizes.gridViewSpacing,
          mainAxisSpacing: YSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
