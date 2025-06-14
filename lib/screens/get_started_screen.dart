// lib/screens/get_started_screen.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/utils/app_colors.dart'; // Importa los colores.
import 'package:animed_food1/utils/app_styles.dart'; // Importa los estilos de texto.
import 'package:animed_food1/widgets/custom_button.dart'; // Importa el botón personalizado.
import 'package:animed_food1/screens/login_options_screen.dart'; // Importa la pantalla de Login Options.

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth <= 640;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(35)),
          gradient: AppColors.getStartedGradient, // Aplica el gradiente de la Splash Screen.
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? screenWidth * 0.1 : 40.0,
            vertical: isSmallScreen ? screenHeight * 0.05 : 50.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Alinea los elementos desde la parte superior.
            crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos horizontalmente a la izquierda.
            children: [
              // Espacio superior para separar del borde.
              SizedBox(height: isSmallScreen ? 40 : 60),

              // Logo "ANIME FOOD" (Centrado a pesar de crossAxisAlignment.start)
              Center( // Mantenemos el logo centrado explícitamente.
                child: Image.asset(
                  'assets/images/logo.png', // Misma imagen, diferente tamaño.
                  height: isSmallScreen ? 80 : 100,
                  width: isSmallScreen ? 200 : 250,
                  fit: BoxFit.contain,
                ),
              ),

              // Espacio entre el logo y el texto principal.
              SizedBox(height: isSmallScreen ? 40 : 60),

              // Texto principal "Cada Platillo Cuenta Su Historia ÚNICA".
              Align( // Usamos Align para el RichText para asegurar la alineación a la izquierda
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    text: 'Cada Platillo\nCuenta Su\nHistoria ', // Parte del texto en blanco.
                    style: AppStyles.heiseiMaruGothicTitleStyle( // Usa el estilo con Heisei Maru Gothic Std
                      fontSize: isSmallScreen ? 38 : 48, // Tamaño de fuente adaptable.
                      color: AppColors.white, // Color blanco.
                      fontWeight: FontWeight.w400, // Regular como en la imagen
                    ),
                    children: [
                      TextSpan(
                        text: 'ÚNICA', // Palabra "ÚNICA" con color diferente.
                        style: AppStyles.heiseiMaruGothicUniqueWordStyle( // Usa el estilo con Heisei Maru Gothic Std
                          fontSize: isSmallScreen ? 38 : 48, // Mismo tamaño, diferente color.
                          fontWeight: FontWeight.w400, // Regular como en la imagen
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left, // Alinea el texto a la izquierda.
                ),
              ),

              // Spacer para empujar el botón "INICIAR" hacia la parte inferior.
              const Spacer(),

              // Botón "INICIAR".
              // Centramos el botón explícitamente, ya que la columna ahora se alinea a la izquierda.
              Center(
                child: CustomButton(
                  text: 'INICIAR', // Texto del botón a "INICIAR".
                  onPressed: () {
                    // NAVEGACIÓN: Al presionar este botón, lleva a la pantalla de LoginOptionsScreen.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginOptionsScreen()));
                  },
                  buttonColor: AppColors.white, // Fondo blanco para el botón.
                  width: isSmallScreen ? screenWidth * 0.7 : 250, // Ancho adaptable del botón.
                  height: isSmallScreen ? 60 : 70, // Alto adaptable del botón.
                  borderRadius: 30.0, // Radio de borde.
                  textStyle: AppStyles.heiseiMaruGothicButtonTextStyle( // Usa el estilo con Heisei Maru Gothic Std para el botón.
                    fontSize: isSmallScreen ? 20 : 24, // Tamaño de fuente adaptable.
                    fontWeight: FontWeight.w800, // Extra Bold.
                    color: AppColors.uniqueWordColor, // Color naranja para el texto.
                  ),
                ),
              ),

              // Espacio inferior para el padding.
              SizedBox(height: isSmallScreen ? 40 : 50),
            ],
          ),
        ),
      ),
    );
  }
}