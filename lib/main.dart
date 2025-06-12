// lib/main.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/screens/splash_screen.dart'; // CAMBIO AQUÍ
import 'package:animed_food1/utils/app_colors.dart'; // CAMBIO AQUÍ

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anime Food App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Inter',
      ),
      home: const SplashScreen(),
    );
  }
}