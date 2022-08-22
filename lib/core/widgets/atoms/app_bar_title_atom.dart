import 'package:auto_route/auto_route.dart';
import 'package:libremart/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitleAtom extends StatelessWidget {
  const AppBarTitleAtom({
    Key? key,
    required this.theme,
    required this.tabsRouter,
  }) : super(key: key);

  final ThemeData theme;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return Text(
      tabsRouter.current.path == kStringsRoutesBrowse
          ? kStringsNavigationBrowse
          : tabsRouter.current.path == kStringsRoutesInstalled
              ? kStringsNavigationInstalled
              : tabsRouter.current.path == kStringsRoutesUpdates
                  ? kStringsNavigationUpdates
                  : kAppTitle,
      style: GoogleFonts.bebasNeue(
        fontSize: theme.textTheme.displaySmall?.fontSize,
        color: theme.textTheme.displaySmall?.color,
      ),
    );
  }
}
