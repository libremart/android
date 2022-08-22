import 'package:libremart/theme/color_schemes.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:libremart/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:libremart/theme/libremart_theme.dart';

class LibremartCore extends StatelessWidget {
  const LibremartCore({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;

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
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: lightColorSchemeA,
              ),
              //  LibremartTheme.light(),
              darkTheme: LibreMartTheme.dark(),
              themeMode: ThemeMode.system, //! implement override theme switcher
              debugShowCheckedModeBanner: false,
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
            );
          },
        );
      },
    );
  }
}
