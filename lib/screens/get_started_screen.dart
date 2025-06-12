// lib/screens/get_started_screen.dart
import 'package:flutter/material.dart';
import 'package:animed_food1/utils/app_colors.dart';
import 'package:animed_food1/utils/app_styles.dart';
import 'package:animed_food1/widgets/custom_button.dart';
import 'package:animed_food1/screens/login_options_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth <= 640;
    final isMediumScreen = screenWidth <= 991;

    return Scaffold(
      body: Center(
        child: Container(
          width: isMediumScreen ? screenWidth : 430,
          height: isSmallScreen ? screenHeight : 932,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(35)),
            gradient: AppColors.getStartedGradient,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isSmallScreen ? screenWidth * 0.05 : 30.0,
              vertical: isSmallScreen ? screenHeight * 0.05 : 50.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 120, // Ajuste del tamaño
                    height: 120, // Ajuste del tamaño
                    fit: BoxFit.contain,
                    semanticLabel: 'Anime Food Logo',
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 120,
                        height: 120,
                        color: Colors.grey[300],
                        child: const Icon(Icons.image, color: Colors.grey),
                      );
                    },
                  ),
                ),

                SizedBox(height: isSmallScreen ? 30 : 60),

                SizedBox(
                  width: isSmallScreen
                      ? screenWidth * 0.9
                      : isMediumScreen
                          ? screenWidth * 0.8
                          : 372,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: AppStyles.heiseiMaruGothicTitleStyle(
                        fontSize: isSmallScreen ? 28 : isMediumScreen ? 36 : 42,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Cada Platillo\nCuenta Su Historia ',
                        ),
                        TextSpan(
                          text: 'ÚNICA',
                          style: AppStyles.uniqueWordTextStyle.copyWith(
                            fontSize: isSmallScreen ? 28 : isMediumScreen ? 36 : 42,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(),

                Center(
                  child: CustomButton(
                    text: 'EMPECEMOS',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const LoginOptionsScreen()),
                      );
                    },
                    buttonColor: const Color.fromARGB(255, 255, 255, 255),
                    width: isSmallScreen
                        ? screenWidth * 0.75
                        : isMediumScreen
                            ? screenWidth * 0.6
                            : 280,
                    height: isSmallScreen ? 60 : 75,
                    borderRadius: 40.0,
                    textStyle: AppStyles.heiseiMaruGothicButtonTextStyle(
                      fontSize: isSmallScreen ? 28 : isMediumScreen ? 32 : 36,
                      fontWeight: FontWeight.w800,
                      color: AppColors.uniqueWordColor, // Usa el color restaurado
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
