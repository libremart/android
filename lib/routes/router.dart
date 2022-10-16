// private navigators
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:libremart/core/pipe/libremart_app.dart';
import 'package:libremart/features/browse/widgets/pages/browse_page.dart';
import 'package:libremart/features/installed/widgets/pages/installed_page.dart';
import 'package:libremart/features/updates/widgets/pages/updates_page.dart';
import 'package:libremart/theme/constants.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

// the one and only GoRouter instance
final goRouter = GoRouter(
  initialLocation: kStringsRoutesBrowse,
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return LibreMartApp(
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: kStringsRoutesBrowse,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: BrowsePage(),
          ),
        ),
        GoRoute(
          path: kStringsRoutesInstalled,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: InstalledPage(),
          ),
        ),
        GoRoute(
          path: kStringsRoutesUpdates,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: UpdatesPage(),
          ),
        ),
      ],
    ),
  ],
);
