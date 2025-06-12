// lib/screens/login_options_screen.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/utils/app_colors.dart';
import 'package:animed_food1/utils/app_styles.dart';
import 'package:animed_food1/widgets/custom_button.dart';

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
          gradient: AppColors.loginBackgroundGradient, // Gradiente naranja a naranja oscuro
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

              const Spacer(flex: 3),

              Column(
                children: [
                  // Botón "Iniciar con google"
                  CustomButton(
                    text: 'Iniciar con google',
                    onPressed: () {},
                    buttonGradient: AppColors.loginButtonGradient,
                    width: isSmallScreen ? screenWidth * 0.8 : 300,
                    height: isSmallScreen ? 50 : 60,
                    borderRadius: 30.0,
                    icon: Image.asset(
                      'assets/images/google_logo_colored.png', // Icono de Google
                      height: isSmallScreen ? 20 : 24, // Ajustar tamaño del icono
                    ),
                    textStyle: AppStyles.heiseiMaruGothicButtonTextStyle(
                      fontSize: isSmallScreen ? 16 : 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.googleIconColor, // Color azul para el texto del botón
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Botón "Iniciar Con Telefono"
                  CustomButton(
                    text: 'Iniciar Con Telefono',
                    onPressed: () {},
                    buttonGradient: AppColors.loginButtonGradient,
                    width: isSmallScreen ? screenWidth * 0.8 : 300,
                    height: isSmallScreen ? 50 : 60,
                    borderRadius: 30.0,
                    icon: Image.asset(
                      'assets/images/phone_icon_green.png', // Icono de Teléfono
                      height: isSmallScreen ? 20 : 24,
                    ),
                    textStyle: AppStyles.heiseiMaruGothicButtonTextStyle(
                      fontSize: isSmallScreen ? 16 : 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.phoneIconColor, // Color verde para el texto del botón
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Botón "Iniciar Con Correo"
                  CustomButton(
                    text: 'Iniciar Con Correo',
                    onPressed: () {},
                    buttonGradient: AppColors.loginButtonGradient,
                    width: isSmallScreen ? screenWidth * 0.8 : 300,
                    height: isSmallScreen ? 50 : 60,
                    borderRadius: 30.0,
                    icon: Image.asset(
                      'assets/images/mail_icon_red.png', // Icono de Correo
                      height: isSmallScreen ? 20 : 24,
                    ),
                    textStyle: AppStyles.heiseiMaruGothicButtonTextStyle(
                      fontSize: isSmallScreen ? 16 : 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.mailIconColor, // Color rojo para el texto del botón
                    ),
                  ),
                ],
              ),

              const Spacer(flex: 2),

              // Texto inferior
              Text(
                '¿No te has registrado?',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: isSmallScreen ? 14 : 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.loginTitleAndBottomText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
