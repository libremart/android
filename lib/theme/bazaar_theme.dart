import 'package:flutter/material.dart';
import 'package:bazaar/theme/color_schemes.dart';

class BazaarTheme {
  static ThemeData theme(BuildContext context, Brightness brightness) {
    return brightness == Brightness.light
        ? ThemeData(
            useMaterial3: true,
            colorScheme: lightColorScheme,
            fontFamily: 'Ubuntu',
          )
        : ThemeData(
            useMaterial3: true,
            colorScheme: darkColorScheme,
            fontFamily: 'Ubuntu',
          );
  }
}
