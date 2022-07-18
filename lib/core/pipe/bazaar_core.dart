import 'package:bazaar/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:bazaar/theme/bazaar_theme.dart';

class BazaarCore extends StatelessWidget {
  const BazaarCore({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        theme: BazaarTheme.theme(context, Brightness.light),
        darkTheme: BazaarTheme.theme(context, Brightness.dark),
        themeMode: ThemeMode.system, //! implement override theme switcher
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      );
    });
  }
}
