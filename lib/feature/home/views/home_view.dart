import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:vento_store/core/constants/app_sizes.dart';

import 'package:vento_store/feature/home/widgets/y_home_app_bar.dart';
import 'package:vento_store/shared/widgets/y_search_container.dart';

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
                /// -- Cuatom Home AppBar
                const YHomeAppBar(),
                const SizedBox(height: YSizes.spaceBtwSections),

                /// --- SearchBar Container
                const YSearchContainer(
                  searchIcon: Iconsax.search_favorite,
                  searchTitle: 'Search in store',
                ),
                const SizedBox(height: YSizes.spaceBtwSections),

                /// --- Categorise
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Popular Categories'),
                        TextButton(onPressed: () {}, child: Text('View All')),
                      ],
                    ),
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
