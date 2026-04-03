import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/feature/home/widgets/categories/y_best_seller_categories.dart';
import 'package:vento_store/feature/home/widgets/categories/y_new_arrival.dart';
import 'package:vento_store/feature/home/widgets/y_carousel_slider.dart';
import 'package:vento_store/feature/home/widgets/y_dot_rounded_container.dart';
import 'package:vento_store/feature/home/widgets/y_home_app_bar.dart';
import 'package:vento_store/feature/home/widgets/y_home_categories.dart';

import 'package:vento_store/shared/widgets/container/y_search_container.dart';
import 'package:vento_store/shared/widgets/layout/y_grid_layout.dart';
import 'package:vento_store/shared/widgets/y_seation_heading.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: YSizes.defaultSpace,
            ),
            child: Column(
              children: [
                /// --- Cuatom Home AppBar
                const YHomeAppBar(),
                const SizedBox(height: YSizes.spaceBtwSections / 2),

                /// --- SearchBar Container
                const YSearchContainer(
                  searchIcon: Iconsax.search_favorite,
                  searchTitle: 'Search in store',
                ),
                const SizedBox(height: YSizes.spaceBtwSections),

                /// --- Categorise
                const Column(
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
                const SizedBox(height: YSizes.spaceBtwSections),

                /// --- Home Promo Slider
                const Column(
                  children: [
                    // -- Slider
                    YCarouselDlider(),
                    SizedBox(height: YSizes.spaceBtwItems),
                    // -- Slider Dotnavigatios
                    YDotRoundedContainer(),
                  ],
                ),
                const SizedBox(height: YSizes.spaceBtwSections),

                /// --- Seaction Heading
                const YSeactionHeading(
                  title: 'Best Seller',
                  showViewAllBtn: true,
                ),

                /// --- Best Sellers Categories
                YGridLayOut(
                  itemCount: 4,
                  mainAxisExtent: 275,
                  itemBuilder: (BuildContext context, int index) {
                    return const YBestSellerCategories();
                  },
                ),
                const SizedBox(height: YSizes.spaceBtwSections),

                /// --- Seaction Heading
                const YSeactionHeading(
                  title: 'New Arrival',
                  showViewAllBtn: true,
                ),

                /// --- Best Sellers Categories
                YGridLayOut(
                  itemCount: 4,
                  mainAxisExtent: 275,
                  itemBuilder: (BuildContext context, int index) {
                    return const YNewArrival();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
