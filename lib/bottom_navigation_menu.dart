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
        onDestinationSelected: (index) =>
            bottomMenuProvider.updateCurrentIndex(index),
        elevation: 0.0,
        backgroundColor: isDark
            ? YAppColors.darkContainer
            : YAppColors.textWhite,
        indicatorColor: isDark
            ? YAppColors.textWhite.withAlpha(100)
            : YAppColors.accentGold.withAlpha(100),
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
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
