import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  int currentSliderIndex = 0;
  void updateSliderIndex(int index) {
    currentSliderIndex = index;
    notifyListeners();
  }
}
