import 'package:go_router/go_router.dart';
import 'package:libremart/theme/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitleAtom extends StatelessWidget {
  const AppBarTitleAtom({
    Key? key,
    required this.theme,
    required this.router,
  }) : super(key: key);

  final ThemeData theme;
  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return Text(
      router.location == kStringsRoutesBrowse
          ? kStringsNavigationBrowse
          : router.location == kStringsRoutesInstalled
              ? kStringsNavigationInstalled
              : router.location == kStringsRoutesUpdates
                  ? kStringsNavigationUpdates
                  : kAppTitle,
      style: GoogleFonts.bebasNeue(
        fontSize: theme.textTheme.displaySmall?.fontSize,
        color: theme.textTheme.displaySmall?.color,
      ),
    );
  }
}
