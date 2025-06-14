// lib/main.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/screens/splash_screen.dart';
import 'package:animed_food1/screens/get_started_screen.dart';
import 'package:animed_food1/screens/login_options_screen.dart';
import 'package:animed_food1/screens/register_screen.dart';
import 'package:animed_food1/screens/login_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animed Food',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/getStarted': (context) => const GetStartedScreen(),
        '/loginOptions': (context) => const LoginOptionsScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
      },
      initialRoute: '/splash',
    );
  }
}