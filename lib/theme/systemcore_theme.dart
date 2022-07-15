import 'package:flutter/material.dart';

// const primaryColor = Color(0xFF8657EB);
const secondaryColor = Color.fromARGB(255, 65, 100, 223);

class BazaarTheme {
  static ThemeData theme(BuildContext context, Brightness brightness) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(251, 190, 192, 50),
        // primary: primaryColor,
        secondary: secondaryColor,
        // tertiary: const primaryColor,
        brightness: brightness,
      ),
      useMaterial3: true,
      fontFamily: 'Ubuntu',
    );
  }
}
