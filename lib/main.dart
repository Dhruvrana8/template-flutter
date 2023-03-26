import 'package:flutter/material.dart';
import 'package:flutter_template/navigation/route.dart';
import 'package:flutter_template/view/homeScreen/home_screen.dart';
import 'package:flutter_template/view/onBoardingScreen/on_boarding_screen.dart';
import 'package:flutter_template/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Template"),
          centerTitle: true,
        ),
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
