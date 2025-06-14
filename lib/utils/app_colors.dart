// lib/utils/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // --- Colores y Gradientes para Splash Screen y Get Started Screen (Fondo Naranja a Naranja Claro) ---
  static const Color primaryOrangeLight = Color(0xFFFF9500); // Naranja claro superior
  static const Color primaryOrangeDark = Color(0xFFFFCC00); // Naranja más claro para el gradiente original
  static const LinearGradient getStartedGradient = LinearGradient(
    colors: [primaryOrangeLight, primaryOrangeDark, primaryOrangeLight],
    stops: [0.3894, 0.8462, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  // Color específico para la palabra "ÚNICA" y el botón de "EMPECEMOS" en Get Started.
  static const Color uniqueWordColor = Color(0xFFFC5F05);


  // --- Colores y Gradientes para la pantalla Login Options (Fondo Blanco a Naranja) ---
  // Estos son los colores exactos del gradiente de fondo de la imagen de Login Options.
  static const Color loginBgWhite = Color.fromARGB(255, 255, 255, 255); // Blanco para la parte superior del fondo
  static const Color loginBgOrange = Color.fromARGB(255, 255, 145, 0); // Naranja para la parte inferior del fondo
  static const LinearGradient loginBackgroundGradient = LinearGradient(
    colors: [loginBgWhite, loginBgOrange], // Degradado de blanco a naranja
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Colores para los botones en Login Options (Fondo Blanco a Blanco)
  // Según la última imagen, los botones son blancos puros o con un gradiente muy sutil blanco a blanco.
  static const Color loginButtonBgLight = Color(0xFFFFFFFF); // Blanco para el inicio del gradiente del botón
  static const Color loginButtonBgDark = Color(0xFFFFFFFF); // Blanco para el final del gradiente del botón (haciéndolo blanco puro)
  static const LinearGradient loginButtonGradient = LinearGradient(
    colors: [loginButtonBgLight, loginButtonBgDark], // Degradado de blanco a blanco (efectivamente blanco puro)
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Colores del texto y los iconos en la pantalla de Login Options
  static const Color loginTitleAndBottomText = Color(0xFFFF7043); // Naranja rojizo para títulos y texto inferior
  // Colores específicos de los iconos de los botones (usados directamente en el textStyle del botón)
  static const Color googleIconColor = Color(0xFF4285F4); // Azul para el icono de Google
  static const Color phoneIconColor = Color(0xFF34A853); // Verde para el icono de Teléfono
  static const Color mailIconColor = Color(0xFFEA4335); // Rojo para el icono de Correo


  // --- Colores para las nuevas pantallas de Registro e Inicio de Sesión (Fondo Gris Oscuro) ---
  static const Color darkScreenBgColor = Color(0xFF1E1E1E); // Fondo gris muy oscuro/casi negro

  // Colores para los campos de texto (TextFields)
  static const Color textFieldFillColor = Color(0xFFFFFFFF); // Color de fondo de los campos: Blanco
  static const Color textFieldBorderColor = Color(0xFFE0E0E0); // Color del borde de los campos: Gris claro
  static const Color hintTextColor = Color(0xFFBDBDBD); // Color del texto de sugerencia (placeholder): Gris medio
  static const Color inputTextColor = Color(0xFF424242); // Color del texto que el usuario escribe: Gris oscuro

  // Colores para títulos y textos en las pantallas de Registro/Inicio de Sesión (el color naranja del título)
  static const Color authScreenTitleColor = Color(0xFFFF7043); // Naranja rojizo para títulos como "Registrate"


  // --- Colores generales que podrían ser útiles ---
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
}