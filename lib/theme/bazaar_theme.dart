import 'package:flutter/material.dart';
import 'package:bazaar/theme/color_schemes.dart';
import 'package:google_fonts/google_fonts.dart';

class BazaarTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      textTheme: GoogleFonts.ubuntuTextTheme(ThemeData.light().textTheme),
    );
  }

  static ThemeData dark() {
    return ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        textTheme: GoogleFonts.ubuntuTextTheme(ThemeData.dark().textTheme));
  }
}
