// lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/utils/app_colors.dart';
import 'package:animed_food1/utils/app_styles.dart';
import 'package:animed_food1/screens/register_screen.dart'; // Importa la pantalla de registro
import 'package:animed_food1/screens/login_options_screen.dart'; // Importa la pantalla de LoginOptionsScreen

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 640;

    return Scaffold(
      backgroundColor: AppColors.white, // Establece el fondo del Scaffold a blanco
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Hace el AppBar transparente
        elevation: 0, // Elimina la sombra del AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.black), // Icono de flecha hacia atrás en color negro
          onPressed: () {
            // NAVEGACIÓN: Al presionar este botón, lleva a LoginOptionsScreen
            Navigator.pushReplacement( // Usa pushReplacement para ir a LoginOptionsScreen
              context,
              MaterialPageRoute(builder: (context) => const LoginOptionsScreen()),
            );
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? screenWidth * 0.1 : 40.0,
            vertical: isSmallScreen ? 0.0 : 0.0, // Ajusta el padding vertical si es necesario debido al AppBar
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Espacio superior.
              SizedBox(height: isSmallScreen ? 20 : 40), // Reducido el espacio ya que el AppBar ocupa un lugar

              // Título "Iniciar Sesion".
              Text(
                'Iniciar Sesion',
                style: AppStyles.authScreenTitleStyle(
                  fontSize: isSmallScreen ? 36 : 40,
                  color: AppColors.authScreenTitleColor, // Naranja para el título.
                ),
              ),

              // Espacio entre el título y el primer campo.
              SizedBox(height: isSmallScreen ? 50 : 80),

              // Campo de texto para Nombre de Usuario.
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Nombre Usuario', style: AppStyles.textFieldLabelStyle(color: AppColors.black)), // Texto negro
              ),
              const SizedBox(height: 8),
              _buildTextField(
                hintText: 'Introduce tu nombre de usuario',
                isSmallScreen: isSmallScreen,
                screenWidth: screenWidth,
              ),

              const SizedBox(height: 20), // Espacio entre campos.

              // Campo de texto para Correo Electrónico.
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Correo Electrónico', style: AppStyles.textFieldLabelStyle(color: AppColors.black)), // Texto negro
              ),
              const SizedBox(height: 8),
              _buildTextField(
                hintText: 'Introduce tu correo electronico',
                isSmallScreen: isSmallScreen,
                screenWidth: screenWidth,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20), // Espacio entre campos.

              // Campo de texto para Contraseña.
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Contraseña', style: AppStyles.textFieldLabelStyle(color: AppColors.black)), // Texto negro
              ),
              const SizedBox(height: 8),
              _buildTextField(
                hintText: 'Introduce tu contraseña',
                isSmallScreen: isSmallScreen,
                screenWidth: screenWidth,
                obscureText: true,
              ),

              const SizedBox(height: 60), // Espacio antes del botón.

              // Botón "Iniciar Sesion"
              ElevatedButton(
                onPressed: () {
                  // Lógica para iniciar sesión.
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.uniqueWordColor, // Color naranja.
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: Size(isSmallScreen ? screenWidth * 0.8 : 300, 55),
                ),
                child: Text(
                  'Iniciar Sesion',
                  style: AppStyles.interButtonTextStyle(
                    fontSize: isSmallScreen ? 18 : 20,
                    color: AppColors.white, // Texto blanco.
                  ),
                ),
              ),

              const SizedBox(height: 30), // Espacio antes del texto inferior.

              // Texto "¿No te has Registrado?". Ahora es clickeable.
              GestureDetector(
                onTap: () {
                  // NAVEGACIÓN: Al tocar el texto, lleva a la pantalla de Registro.
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                },
                child: Text(
                  '¿No te has Registrado?',
                  style: AppStyles.textFieldLabelStyle(
                    fontSize: isSmallScreen ? 17 : 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.authScreenTitleColor, // Naranja para el texto.
                  ),
                ),
              ),
              SizedBox(height: isSmallScreen ? 20 : 30), // Espacio inferior.
            ],
          ),
        ),
      ),
    );
  }

  // Función auxiliar para construir campos de texto (TextFields) de manera consistente
  Widget _buildTextField({
    required String hintText,
    required bool isSmallScreen,
    required double screenWidth,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
  }) {
    return Container(
      width: isSmallScreen ? screenWidth * 0.8 : 300,
      child: TextField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: AppStyles.textFieldInputStyle(color: AppColors.inputTextColor),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textFieldFillColor, // Fondo blanco.
          hintText: hintText,
          hintStyle: AppStyles.textFieldHintStyle(color: AppColors.hintTextColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: AppColors.textFieldBorderColor, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: AppColors.authScreenTitleColor, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: isSmallScreen ? 12 : 15,
            horizontal: 15,
          ),
        ),
      ),
    );
  }
}