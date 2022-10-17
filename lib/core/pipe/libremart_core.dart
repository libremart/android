import 'package:go_router/go_router.dart';
import 'package:libremart/theme/color_schemes.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:libremart/theme/libremart_theme.dart';

class LibremartCore extends StatelessWidget {
  const LibremartCore({
    Key? key,
    required this.router,
  }) : super(key: key);

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return DynamicColorBuilder(
          builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
            final ColorScheme lightColorSchemeA;
            ColorScheme darkColorScheme;

            if (lightDynamic != null && darkDynamic != null) {
              // lightColorScheme = lightDynamic.harmonized()..copyWith();
              // lightColorScheme = lightColorScheme.copyWith(secondary: brandColor) //* an option to add on top of the user thmee our own brand color. nice.
              lightColorSchemeA = lightDynamic.harmonized();
              darkColorScheme = darkDynamic.harmonized();
            } else {
              lightColorSchemeA = lightColorScheme;
            }

            return MaterialApp.router(
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              routerDelegate: router.routerDelegate,
              routeInformationParser: router.routeInformationParser,
              routeInformationProvider: router.routeInformationProvider,
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: lightColorSchemeA,
              ),
              darkTheme: LibreMartTheme.dark(),
              themeMode: ThemeMode.system, //! implement override theme switcher
            );
          },
        );
      },
    );
  }
}
