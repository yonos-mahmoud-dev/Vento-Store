import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/core/constants/app_colors.dart';
import 'package:vento_store/core/utils/helpers/exports.dart';
import 'package:vento_store/feature/home/views/home_view.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = YHelperFunctions.isDarkMode(context);
    final bottomMenuProvider = context.watch<BottomNavigationMenuProvider>();

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: bottomMenuProvider.currentIndex,
        height: 80,
        onDestinationSelected: (index) =>
            bottomMenuProvider.updateCurrentIndex(index),
        elevation: 0.5,
        backgroundColor: isDark
            ? YAppColors.primaryDarkBg
            : YAppColors.primarylightBg,
        indicatorColor: isDark
            ? YAppColors.primaryGold
            : YAppColors.primaryGold,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: YAppColors.primaryGold,
            ); // Selected color
          } else {
            return const TextStyle(color: YAppColors.borderLightecondary);
          }
          // Unselected color
        }),
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Iconsax.home, color: Colors.white),
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.shop, color: Colors.white),
            icon: Icon(Iconsax.shop),
            label: 'Store',
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.heart, color: Colors.white),
            icon: Icon(Iconsax.heart),
            label: 'WishList',
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.user, color: Colors.white),
            icon: Icon(Iconsax.user),
            label: 'Profile',
          ),
        ],
      ),
      body: bottomMenuProvider.screens[bottomMenuProvider.currentIndex],
    );
  }
}

class BottomNavigationMenuProvider with ChangeNotifier {
  int currentIndex = 0;

  void updateCurrentIndex(int index) {
    currentIndex = index;

    notifyListeners();
  }

  List<Widget> screens = [
    const HomeView(),
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.amber),
  ];
}
