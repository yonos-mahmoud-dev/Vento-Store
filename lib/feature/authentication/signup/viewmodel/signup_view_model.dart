import 'package:flutter/material.dart';
import 'package:vento_store/core/services/navigation_services.dart';
import 'package:vento_store/routes/app_routes.dart';

class SignupViewModel with ChangeNotifier {
  /// --- go back to sign in page when sign in button clicked
  void signIn() {
    NavigationServices.goTo(AppRoutes.signIn);
    notifyListeners();
  }

  /// --- Check email and passowrd if correct store in fireStor and move to next step screen
  void verifyEmail() {
    NavigationServices.goTo(AppRoutes.verifyEmail);
    notifyListeners();
  }

  /// --- Check & vreify the code sent into email if correct  move to next step screen
  void vreifyEmailCode() {
    NavigationServices.goTo(AppRoutes.aboutYourself);
    notifyListeners();
  }

  /// --- Check & vreify about inof  if correct  move to next step screen
  void vreifyAboutInfo() {
    NavigationServices.goTo(AppRoutes.interest);
    notifyListeners();
  }

  /// --- Check & vreify interest inof  if had choose  move to next step screen
  void setPersonalInterset() async {
    NavigationServices.goTo(AppRoutes.stepEveryThings);
    await Future.delayed(const Duration(seconds: 10));
    NavigationServices.goTo(AppRoutes.signIn);
    notifyListeners();
  }
}
