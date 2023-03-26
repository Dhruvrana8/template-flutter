import 'package:flutter/material.dart';
import 'constants/app_strings.dart';
import 'navigation/route.dart';
import 'view/homeScreen/home_screen.dart';
import 'view/onBoardingScreen/on_boarding_screen.dart';
import 'view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString.appName,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      routes: {
        RouteName.splashScreen: (context) => const SplashScreen(),
        RouteName.homeScreen: (context) => const HomeScreen(),
        RouteName.onBoardingScreen: (context) => const OnBoarding()
      },
    );
  }
}
