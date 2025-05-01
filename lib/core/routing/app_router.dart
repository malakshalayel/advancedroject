import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/features/login/ui/login_screen.dart';
import 'package:advanced_project/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case '/details':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
