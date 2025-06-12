// lib/screens/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/screens/get_started_screen.dart';
import 'package:animed_food1/utils/app_colors.dart'; // Asegúrate de que esta importación sea correcta
import 'package:animed_food1/utils/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: AppConstants.splashScreenDuration), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const GetStartedScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // ¡CAMBIO AQUÍ! Usamos getStartedGradient en lugar de primaryGradient
          gradient: AppColors.getStartedGradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 250,
                height: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}