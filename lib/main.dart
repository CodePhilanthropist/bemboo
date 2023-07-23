import 'package:bemboo/src/features/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'src/features/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.onboarding: (context) => const OnboardingScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
      },
    );
  }
}

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String home = '/home';
}
