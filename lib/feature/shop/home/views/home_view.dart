import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vento_store/core/constants/app_sizes.dart';
import 'package:vento_store/core/constants/app_strings.dart';
import 'package:vento_store/feature/home/widgets/categories/y_best_seller_categories.dart';
import 'package:vento_store/feature/home/widgets/categories/y_hot_collections.dart';
import 'package:vento_store/feature/home/widgets/categories/y_hot_trending.dart';
import 'package:vento_store/feature/home/widgets/categories/y_new_arrival.dart';
import 'package:vento_store/feature/home/widgets/y_carousel_slider.dart';
import 'package:vento_store/feature/home/widgets/y_dot_rounded_container.dart';
import 'package:vento_store/feature/home/widgets/y_home_app_bar.dart';
import 'package:vento_store/feature/home/widgets/categories/y_home_categories.dart';
import 'package:vento_store/shared/widgets/container/y_search_container.dart';
import 'package:vento_store/shared/widgets/layout/y_grid_layout.dart';
import 'package:vento_store/shared/widgets/text/y_seation_heading.dart';

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
                  searchTitle: YAppString.searchText,
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
                const SizedBox(height: YSizes.spaceBtwSections / 2),

                /// ---  Best Sellers Categories Seaction Heading
                const YSeactionHeading(
                  title: YAppString.bestSeller,
                  showViewAllBtn: true,
                ),

                /// --- Best Sellers Categories
                YGridLayOut(
                  itemCount: 10,
                  mainAxisExtent: 275,
                  itemBuilder: (BuildContext context, int index) {
                    return const YBestSellerCategories();
                  },
                ),
                const SizedBox(height: YSizes.spaceBtwSections / 2),

                /// --- New Arrival Categories Seaction Heading
                const YSeactionHeading(
                  title: YAppString.newArrival,
                  showViewAllBtn: true,
                ),

                /// ---  New Arrival Categories
                YGridLayOut(
                  itemCount: 10,
                  mainAxisExtent: 275,
                  itemBuilder: (BuildContext context, int index) {
                    return const YNewArrival();
                  },
                ),
                const SizedBox(height: YSizes.spaceBtwSections / 2),

                /// --- hotTranding Seaction Heading
                const YSeactionHeading(
                  title: YAppString.hotTranding,
                  showViewAllBtn: true,
                ),

                /// ---  hotTranding Categories
                YGridLayOut(
                  itemCount: 10,
                  mainAxisExtent: 275,
                  itemBuilder: (BuildContext context, int index) {
                    return const YHotTrending();
                  },
                ),
                const SizedBox(height: YSizes.spaceBtwSections / 2),

                /// --- Hot Collections Categories Seaction Heading
                const YSeactionHeading(
                  title: YAppString.hotCollection,
                  showViewAllBtn: true,
                ),

                /// ---  Hot Collections Categories
                YGridLayOut(
                  itemCount: 10,
                  mainAxisExtent: 275,
                  itemBuilder: (BuildContext context, int index) {
                    return const YHotCollections();
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
