// lib/screens/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/utils/app_colors.dart'; // Importa los colores y gradientes.
import 'package:animed_food1/utils/app_constants.dart'; // Importa las constantes (para la duración del splash).
import 'package:animed_food1/screens/get_started_screen.dart'; // Importa la pantalla a la que navegar.

// Convertimos SplashScreen a StatefulWidget para poder usar initState.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navega a la pantalla GetStartedScreen después de la duración definida en AppConstants.
    Future.delayed(const Duration(seconds: AppConstants.splashScreenDuration), () {
      // pushReplacement evita que el usuario pueda regresar a la Splash Screen con el botón de atrás.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const GetStartedScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.getStartedGradient, // El gradiente de fondo.
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png', // Tu logo.
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}