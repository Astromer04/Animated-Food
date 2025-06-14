// lib/utils/app_styles.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/utils/app_colors.dart';

class AppStyles {
  // Estilo para el título principal de Splash y Get Started (e.g., "Cada Platillo...")
  static TextStyle heiseiMaruGothicTitleStyle({
    double fontSize = 48.0,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.white,
  }) {
    return TextStyle(
      fontFamily: 'Heisei Maru Gothic Std',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.1,
    );
  }

  // Estilo para la palabra "ÚNICA" en Get Started
  static TextStyle heiseiMaruGothicUniqueWordStyle({
    double fontSize = 48.0,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.uniqueWordColor,
  }) {
    return TextStyle(
      fontFamily: 'Heisei Maru Gothic Std',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.1,
    );
  }

  // Estilo para el texto del botón "EMPECEMOS"/"INICIAR" y textos similares (Heisei Maru Gothic Std)
  static TextStyle heiseiMaruGothicButtonTextStyle({
    double fontSize = 24.0,
    FontWeight fontWeight = FontWeight.w800,
    Color color = AppColors.uniqueWordColor,
  }) {
    return TextStyle(
      fontFamily: 'Heisei Maru Gothic Std',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.19,
    );
  }

  // Estilo para el título de la pantalla LoginOptions ("¿Con que quieres iniciar sesión?")
  static TextStyle loginOptionsTitleStyle({
    double fontSize = 32.0,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.loginTitleAndBottomText,
  }) {
    return TextStyle(
      fontFamily: 'Heisei Maru Gothic Std',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.2,
    );
  }

  // Estilo para el texto de los botones en LoginOptions (Heisei Maru Gothic Std)
  static TextStyle loginOptionsButtonTextStyle({
    double fontSize = 18.0,
    FontWeight fontWeight = FontWeight.w800,
    Color color = AppColors.black,
  }) {
    return TextStyle(
      fontFamily: 'Heisei Maru Gothic Std',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // --- Estilos para campos de texto en pantallas de Registro/Inicio de Sesión (Inter) ---

  // Estilo para el texto de la etiqueta (e.g., "Nombre Usuario") encima del TextField
  static TextStyle textFieldLabelStyle({
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.w600,
    Color color = AppColors.white,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Estilo para el texto que el usuario escribe dentro del TextField
  static TextStyle textFieldInputStyle({
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.inputTextColor,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Estilo para el texto de sugerencia (placeholder) dentro del TextField
  static TextStyle textFieldHintStyle({
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.hintTextColor,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Estilo para los títulos de "Registrate" o "Iniciar Sesion" (Inter)
  static TextStyle authScreenTitleStyle({
    double fontSize = 40.0,
    FontWeight fontWeight = FontWeight.bold,
    Color color = AppColors.authScreenTitleColor,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Estilo para los textos de los botones en las pantallas de registro/login (Inter)
  static TextStyle interButtonTextStyle({
    double fontSize = 24.0,
    FontWeight fontWeight = FontWeight.w800,
    Color color = AppColors.uniqueWordColor,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}