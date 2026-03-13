import 'package:flutter/material.dart';
import 'package:vento_store/core/services/navigation_services.dart';
import 'package:vento_store/routes/app_routes.dart';

class OnboradingViewModel with ChangeNotifier {
  /// --- Declar Imoprtant Viarable
  int currentIndex = 0;
  PageController pageController = PageController();

  /// --- when Page View Swipe Update Current index
  void updateCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  /// --- skip button clicked update creent index & jump to last Page
  void skipButtonClicke() {
    currentIndex = 2;
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
    notifyListeners();
  }

  /// --- Next button clicked update creent index & jump to next Page
  void nextButtonCliked(BuildContext context) {
    if (currentIndex == 2) {
      NavigationServices.replaceAllTo(AppRoutes.signIn);
    } else {
      int page = currentIndex + 1;
      pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }

    notifyListeners();
  }

  /// --- dot navigation clicked update dot & jump to next Page
  void dotNavigationClicked(int index) {
    currentIndex = index;
    pageController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }
}
