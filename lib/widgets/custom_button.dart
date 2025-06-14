// lib/widgets/custom_button.dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final LinearGradient? buttonGradient; // Gradiente opcional para el fondo del botón
  final Color? buttonColor; // Color de fondo sólido si no se usa gradiente
  final Color? textColor; // Color del texto (puede ser ignorado si textStyle tiene color)
  final double? width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle; // Estilo de texto completo para mayor control
  final Widget? icon; // Ahora acepta un Widget (como Image.asset) para el icono

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.buttonGradient,
    this.buttonColor,
    this.textColor,
    this.width,
    this.height = 50.0,
    this.borderRadius = 10.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    this.textStyle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Aplica el ancho si se especifica
      height: height, // Aplica la altura
      child: DecoratedBox( // Utiliza DecoratedBox para aplicar el gradiente y sombra
        decoration: BoxDecoration(
          gradient: buttonGradient, // Aplica el gradiente si se proporciona
          color: buttonGradient == null ? buttonColor : null, // Si no hay gradiente, usa el color sólido
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Sombra suave para los botones
              offset: const Offset(0, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // Fondo transparente para que se vea el DecoratedBox
            shadowColor: Colors.transparent, // Sin sombra adicional del ElevatedButton
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            padding: padding, // Aplica el padding
          ),
          child: Row( // Usa un Row para alinear el icono y el texto horizontalmente
            mainAxisSize: MainAxisSize.min, // El Row toma el espacio mínimo necesario
            children: [
              if (icon != null) // Muestra el icono si se proporciona
                Padding(
                  padding: const EdgeInsets.only(right: 8.0), // Espacio entre el icono y el texto
                  child: icon!, // Renderiza el widget de icono proporcionado
                ),
              Text(
                text,
                style: textStyle ?? TextStyle( // Usa el textStyle proporcionado o uno por defecto
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}