import 'package:flutter/material.dart';
import 'src/features/home/home_screen.dart';
import 'src/features/onboarding/onboarding_screen.dart';
import 'src/features/product_details/product_details_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.onboarding,
      routes: {
        AppRoutes.onboarding: (context) => const OnboardingScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.productDetails: (context) => const ProductDetailsScreen(),
      },
    );
  }
}

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String productDetails = '/product_details';
}
