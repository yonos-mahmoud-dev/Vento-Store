import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_colors.dart';

import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/feature/home/viewmodel/home_view_model.dart';
import 'package:vento_store/feature/home/widgets/y_carousel_slider.dart';
import 'package:vento_store/feature/home/widgets/y_dot_rounded_container.dart';
import 'package:vento_store/feature/home/widgets/y_home_app_bar.dart';
import 'package:vento_store/feature/home/widgets/y_home_categories.dart';

import 'package:vento_store/shared/widgets/y_search_container.dart';
import 'package:vento_store/shared/widgets/y_seation_heading.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: YSizes.defaultSpace),
            child: Column(
              children: [
                /// --- Cuatom Home AppBar
                YHomeAppBar(),
                SizedBox(height: YSizes.spaceBtwSections),

                /// --- SearchBar Container
                YSearchContainer(
                  searchIcon: Iconsax.search_favorite,
                  searchTitle: 'Search in store',
                ),
                SizedBox(height: YSizes.spaceBtwSections),

                /// --- Categorise
                Column(
                  children: [
                    /// -- heading seaction
                    YSeactionHeading(
                      title: 'Popular Categories',
                      showViewAllBtn: false,
                    ),
                    SizedBox(height: YSizes.spaceBtwItems),

                    /// -- categories
                    YHomeCategories(),
                  ],
                ),
                SizedBox(height: YSizes.spaceBtwSections),

                /// --- Home Promo Slider
                Column(
                  children: [
                    // -- Slider
                    YCarouselDlider(),
                    SizedBox(height: YSizes.spaceBtwItems),
                    // -- Slider Dotnavigatios
                    YDotRoundedContainer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
