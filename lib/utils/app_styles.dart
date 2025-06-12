// lib/utils/app_styles.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/utils/app_colors.dart'; // Asegúrate de que esta importación sea correcta

class AppStyles {
  static TextStyle heiseiMaruGothicTitleStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return TextStyle(
      fontFamily: 'Heisei Maru Gothic Std',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.1,
    );
  }

  static TextStyle heiseiMaruGothicButtonTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return TextStyle(
      fontFamily: 'Heisei Maru Gothic Std',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: 1.19,
    );
  }

  static const TextStyle uniqueWordTextStyle = TextStyle(
    fontFamily: 'Heisei Maru Gothic Std',
    fontWeight: FontWeight.w400,
    color: AppColors.uniqueWordColor, // Usa el color restaurado
  );
}
