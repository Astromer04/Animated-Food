// lib/utils/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // Colores principales de la aplicación (usados en Splash y Get Started)
  static const Color primaryOrangeLight = Color(0xFFFF9500); // Naranja claro superior
  static const Color primaryOrangeDark = Color(0xFFFFCC00); // Naranja más claro para el gradiente original
  static const Color uniqueWordColor = Color(0xFFFC5F05); // Restaurado: Color específico para la palabra "ÚNICA" y el botón de Get Started

  // Colores para la pantalla de LoginOptions
  static const Color loginBgOrangeTop = Color(0xFFFF9500); // Naranja superior del fondo de login
  static const Color loginBgOrangeBottom = Color(0xFFE65100); // Naranja inferior (un poco más oscuro) del fondo de login

  // Colores para los botones de LoginOptions
  static const Color loginButtonBgLight = Color(0xFFFFFFFF); // Blanco para el inicio del gradiente del botón
  static const Color loginButtonBgDark = Color(0xFFFFD54F); // Naranja amarillento para el final del gradiente del botón

  // Colores del texto y los iconos en la pantalla de LoginOptions (según la imagen)
  static const Color loginTitleAndBottomText = Color(0xFFFF7043); // Naranja rojizo para títulos y texto inferior
  static const Color buttonTextBlack = Color(0xFF000000); // Color negro para el texto de los botones

  // Colores específicos de los iconos de los botones (aunque ahora usamos Image.asset)
  static const Color googleIconColor = Color(0xFF4285F4); // Azul para el icono de Google
  static const Color phoneIconColor = Color(0xFF34A853); // Verde para el icono de Teléfono
  static const Color mailIconColor = Color(0xFFEA4335); // Rojo para el icono de Correo

  // Gradientes
  static const LinearGradient getStartedGradient = LinearGradient(
    colors: [primaryOrangeLight, primaryOrangeDark, primaryOrangeLight],
    stops: [0.3894, 0.8462, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient loginBackgroundGradient = LinearGradient(
    colors: [loginBgOrangeTop, loginBgOrangeBottom],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient loginButtonGradient = LinearGradient(
    colors: [loginButtonBgLight, loginButtonBgDark],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
//                     width: isSmallScreen ? 24 : 30, // Ajusta el tamaño del icono
//                     height: isSmallScreen ? 24 : 30, // Ajusta el tamaño del icono