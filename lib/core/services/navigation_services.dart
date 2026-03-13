import 'package:flutter/material.dart';

class NavigationServices {
  /// --- gloable key to trauke pages
  static final GlobalKey<NavigatorState> navigatorKy =
      GlobalKey<NavigatorState>();

  /// --- to push to next screen using rote name
  static Future<dynamic> goTo(String route, {Object? args}) async {
    return navigatorKy.currentState?.pushNamed(route, arguments: args);
  }

  /// --- to push to next screen using rote name and remove current scren
  static Future<dynamic> replaceTo(String route, {Object? args}) async {
    return navigatorKy.currentState?.pushReplacementNamed(
      route,
      arguments: args,
    );
  }

  /// --- to push to next screen using rote name and remove all screen keep this screen
  static Future<dynamic> replaceAllTo(String route) async {
    return navigatorKy.currentState?.pushNamedAndRemoveUntil(
      route,
      (route) => false,
    );
  }

  ///-- pop to returen to prevoice screen from crueent
  static void goBack() {
    navigatorKy.currentState?.pop();
  }
}
