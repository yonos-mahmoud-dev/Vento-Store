import 'package:flutter/material.dart';
import 'package:vento_store/feature/authentication/login/views/sign_in_view.dart';
import 'package:vento_store/feature/authentication/onboarding/views/onboading_view.dart';
import 'package:vento_store/feature/authentication/signup/views/about_yourself_view.dart';
import 'package:vento_store/feature/authentication/signup/views/interest_view.dart';
import 'package:vento_store/feature/authentication/signup/views/setup_verythings_view.dart';
import 'package:vento_store/feature/authentication/signup/views/sign_up_view.dart';
import 'package:vento_store/feature/authentication/signup/views/verify_email_view.dart';
import 'package:vento_store/feature/home/views/home_view.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboadingView());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case AppRoutes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case AppRoutes.verifyEmail:
        return MaterialPageRoute(builder: (_) => const VerifyEmailView());
      case AppRoutes.aboutYourself:
        return MaterialPageRoute(builder: (_) => const AboutYourself());
      case AppRoutes.interest:
        return MaterialPageRoute(builder: (_) => const InterestView());
      case AppRoutes.stepEveryThings:
        return MaterialPageRoute(builder: (_) => const SetupVerythingsView());
      default:
        return MaterialPageRoute(builder: (_) => const SignInView());
    }
  }
}
