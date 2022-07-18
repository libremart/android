// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../core/pipe/bazaar_app.dart' as _i1;
import '../features/browse/widgets/pages/browse_page.dart' as _i4;
import '../features/installed/widgets/pages/installed_page.dart' as _i5;
import '../features/updates/widgets/pages/updates_page.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    BazaarApp.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.BazaarApp());
    },
    BrowseRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    InstalledRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    UpdatesRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.UpdatesPage());
    },
    BrowseRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BrowsePage());
    },
    InstalledRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.InstalledPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(BazaarApp.name, path: '/', children: [
          _i2.RouteConfig(BrowseRouter.name,
              path: 'browse',
              parent: BazaarApp.name,
              children: [
                _i2.RouteConfig(BrowseRoute.name,
                    path: '', parent: BrowseRouter.name)
              ]),
          _i2.RouteConfig(InstalledRouter.name,
              path: 'installed',
              parent: BazaarApp.name,
              children: [
                _i2.RouteConfig(InstalledRoute.name,
                    path: '', parent: InstalledRouter.name)
              ]),
          _i2.RouteConfig(UpdatesRouter.name,
              path: 'updated', parent: BazaarApp.name)
        ])
      ];
}

/// generated route for
/// [_i1.BazaarApp]
class BazaarApp extends _i2.PageRouteInfo<void> {
  const BazaarApp({List<_i2.PageRouteInfo>? children})
      : super(BazaarApp.name, path: '/', initialChildren: children);

  static const String name = 'BazaarApp';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BrowseRouter extends _i2.PageRouteInfo<void> {
  const BrowseRouter({List<_i2.PageRouteInfo>? children})
      : super(BrowseRouter.name, path: 'browse', initialChildren: children);

  static const String name = 'BrowseRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class InstalledRouter extends _i2.PageRouteInfo<void> {
  const InstalledRouter({List<_i2.PageRouteInfo>? children})
      : super(InstalledRouter.name,
            path: 'installed', initialChildren: children);

  static const String name = 'InstalledRouter';
}

/// generated route for
/// [_i3.UpdatesPage]
class UpdatesRouter extends _i2.PageRouteInfo<void> {
  const UpdatesRouter() : super(UpdatesRouter.name, path: 'updated');

  static const String name = 'UpdatesRouter';
}

/// generated route for
/// [_i4.BrowsePage]
class BrowseRoute extends _i2.PageRouteInfo<void> {
  const BrowseRoute() : super(BrowseRoute.name, path: '');

  static const String name = 'BrowseRoute';
}

/// generated route for
/// [_i5.InstalledPage]
class InstalledRoute extends _i2.PageRouteInfo<void> {
  const InstalledRoute() : super(InstalledRoute.name, path: '');

  static const String name = 'InstalledRoute';
}
