import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vento_store/app.dart';
import 'package:vento_store/bottom_navigation_menu.dart';
import 'package:vento_store/feature/authentication/onboarding/viewmodel/onborading_view_model.dart';
import 'package:vento_store/feature/authentication/signup/viewmodel/signup_view_model.dart';
import 'package:vento_store/feature/home/viewmodel/home_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (conext) => OnboradingViewModel()),
        ChangeNotifierProvider(create: (conext) => SignupViewModel()),
        ChangeNotifierProvider(create: (conext) => HomeViewModel()),
        ChangeNotifierProvider(
          create: (contex) => BottomNavigationMenuProvider(),
        ),
      ],
      child: const EnteryPoint(),
    ),
  );
}
