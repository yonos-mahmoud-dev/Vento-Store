import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/core/utils/helpers/exports.dart';
import 'package:vento_store/feature/shop/store/widgets/y_brand_categories.dart';
import 'package:vento_store/shared/widgets/container/y_brand_img_container.dart';
import 'package:vento_store/shared/widgets/container/y_search_container.dart';
import 'package:vento_store/shared/widgets/cutom_appbar/y_custom_appbar.dart';
import 'package:vento_store/shared/widgets/icons/y_cart_counter_icon.dart';
import 'package:vento_store/shared/widgets/layout/y_grid_layout.dart';
import 'package:vento_store/shared/widgets/text/y_brand_title_with_verify_icon.dart';
import 'package:vento_store/shared/widgets/text/y_seation_heading.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: YCustomAppbar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: YSizes.defaultSpace),
            child: YCartCounterIcon(onPressedIcon: () {}, iconSize: 26),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: YSizes.defaultSpace - 4,
        ),
        child: NestedScrollView(
          headerSliverBuilder: (_, isInnerBoxScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 440,
                flexibleSpace: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: YSizes.spaceBtwSections),

                    /// --- Search Box Container
                    const YSearchContainer(
                      searchIcon: Iconsax.search_favorite,
                      searchTitle: YAppString.searchText,
                    ),
                    const SizedBox(height: YSizes.spaceBtwSections),

                    /// -- Brand Categories
                    // -- Brand Seaction heading
                    YSeactionHeading(
                      title: 'Featured Brands',
                      showViewAllBtn: true,
                      onPreesed: () {},
                    ),
                    const SizedBox(height: YSizes.spaceBtwItems),
                    // -- Brand Categorise
                    YGridLayOut(
                      itemCount: 2,
                      mainAxisExtent: 80,
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, index) {
                        return const YBrandCategories();
                      },
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}
