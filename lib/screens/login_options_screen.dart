// lib/screens/login_options_screen.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/utils/app_colors.dart';
import 'package:animed_food1/utils/app_styles.dart';
import 'package:animed_food1/widgets/custom_button.dart';
import 'package:animed_food1/screens/register_screen.dart'; // Importa la pantalla de registro
import 'package:animed_food1/screens/login_screen.dart';    // Importa la pantalla de inicio de sesión

class LoginOptionsScreen extends StatelessWidget {
  const LoginOptionsScreen({super.key});

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
          gradient: AppColors.loginBackgroundGradient, // Gradiente blanco a naranja
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? screenWidth * 0.1 : 40.0,
            vertical: isSmallScreen ? screenHeight * 0.05 : 50.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: isSmallScreen ? 60 : 80),

              // Título: "¿Con que quieres iniciar sesión?"
              Text(
                '¿Con que quieres\niniciar sesión?',
                textAlign: TextAlign.center,
                style: AppStyles.heiseiMaruGothicTitleStyle(
                  fontSize: isSmallScreen ? 32 : 40,
                  fontWeight: FontWeight.w400,
                  color: AppColors.loginTitleAndBottomText, // Color naranja rojizo
                ),
              ),

              // Ajuste de los Spacer para bajar los botones
              const Spacer(flex: 8), // Aumentado para empujar los botones más hacia abajo

              Column(
                children: [
                  // Botón "Iniciar con google"
                  CustomButton(
                    text: 'Iniciar con google',
                    onPressed: () {
                      // Puedes añadir navegación a una futura pantalla de Google Login aquí
                    },
                    buttonGradient: AppColors.loginButtonGradient, // Fondo blanco para el botón
                    width: isSmallScreen ? screenWidth * 0.8 : 300,
                    height: isSmallScreen ? 50 : 60,
                    borderRadius: 30.0,
                    icon: Image.asset(
                      'assets/images/google_logo_colored.png', // Icono de Google
                      height: isSmallScreen ? 20 : 24,
                    ),
                    textStyle: AppStyles.loginOptionsButtonTextStyle(
                      fontSize: isSmallScreen ? 16 : 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.googleIconColor, // Color azul para el texto y icono
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Botón "Iniciar Con Telefono"
                  CustomButton(
                    text: 'Iniciar Con Telefono',
                    onPressed: () {
                      // Puedes añadir navegación a una futura pantalla de Phone Login aquí
                    },
                    buttonGradient: AppColors.loginButtonGradient, // Fondo blanco para el botón
                    width: isSmallScreen ? screenWidth * 0.8 : 300,
                    height: isSmallScreen ? 50 : 60,
                    borderRadius: 30.0,
                    icon: Image.asset(
                      'assets/images/phone_icon_green.png',
                      height: isSmallScreen ? 20 : 24,
                    ),
                    textStyle: AppStyles.loginOptionsButtonTextStyle(
                      fontSize: isSmallScreen ? 16 : 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.phoneIconColor, // Color verde para el texto y icono
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Botón "Iniciar Con Correo"
                  CustomButton(
                    text: 'Iniciar Con Correo',
                    onPressed: () {
                      // NAVEGACIÓN: Al presionar este botón, lleva a la pantalla de Login.
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    buttonGradient: AppColors.loginButtonGradient, // Fondo blanco para el botón
                    width: isSmallScreen ? screenWidth * 0.8 : 300,
                    height: isSmallScreen ? 50 : 60,
                    borderRadius: 30.0,
                    icon: Image.asset(
                      'assets/images/mail_icon_red.png',
                      height: isSmallScreen ? 20 : 24,
                    ),
                    textStyle: AppStyles.loginOptionsButtonTextStyle(
                      fontSize: isSmallScreen ? 16 : 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.mailIconColor, // Color rojo para el texto y icono
                    ),
                  ),
                ],
              ),

              // Ajuste de los Spacer para mantener la relación de espaciado
              const Spacer(flex: 1), // Reducido para dejar más espacio al Spacer de arriba

              // Texto inferior: "¿No te has registrado?"
              GestureDetector( // Envuelve el texto en un GestureDetector para que sea clickeable.
                onTap: () {
                  // NAVEGACIÓN: Al tocar el texto, lleva a la pantalla de Registro.
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                },
                child: Text(
                  '¿No te has registrado?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: isSmallScreen ? 17 : 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}