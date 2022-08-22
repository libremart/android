// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../core/pipe/libremart_app.dart' as _i1;
import '../features/browse/widgets/pages/app_page.dart' as _i4;
import '../features/browse/widgets/pages/browse_page.dart' as _i3;
import '../features/installed/widgets/pages/installed_page.dart' as _i5;
import '../features/updates/widgets/pages/updates_page.dart' as _i6;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LibreMartApp.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LibreMartApp());
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
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    BrowseRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BrowsePage());
    },
    AppRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AppPage());
    },
    InstalledRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.InstalledPage());
    },
    UpdatesRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UpdatesPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(LibreMartApp.name, path: '/', children: [
          _i2.RouteConfig(BrowseRouter.name,
              path: 'browse',
              parent: LibreMartApp.name,
              children: [
                _i2.RouteConfig(BrowseRoute.name,
                    path: '', parent: BrowseRouter.name),
                _i2.RouteConfig(AppRoute.name,
                    path: ':appId', parent: BrowseRouter.name)
              ]),
          _i2.RouteConfig(InstalledRouter.name,
              path: 'installed',
              parent: LibreMartApp.name,
              children: [
                _i2.RouteConfig(InstalledRoute.name,
                    path: '', parent: InstalledRouter.name)
              ]),
          _i2.RouteConfig(UpdatesRouter.name,
              path: 'updates',
              parent: LibreMartApp.name,
              children: [
                _i2.RouteConfig(UpdatesRoute.name,
                    path: '', parent: UpdatesRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.LibreMartApp]
class LibreMartApp extends _i2.PageRouteInfo<void> {
  const LibreMartApp({List<_i2.PageRouteInfo>? children})
      : super(LibreMartApp.name, path: '/', initialChildren: children);

  static const String name = 'LibreMartApp';
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
/// [_i2.EmptyRouterPage]
class UpdatesRouter extends _i2.PageRouteInfo<void> {
  const UpdatesRouter({List<_i2.PageRouteInfo>? children})
      : super(UpdatesRouter.name, path: 'updates', initialChildren: children);

  static const String name = 'UpdatesRouter';
}

/// generated route for
/// [_i3.BrowsePage]
class BrowseRoute extends _i2.PageRouteInfo<void> {
  const BrowseRoute() : super(BrowseRoute.name, path: '');

  static const String name = 'BrowseRoute';
}

/// generated route for
/// [_i4.AppPage]
class AppRoute extends _i2.PageRouteInfo<void> {
  const AppRoute() : super(AppRoute.name, path: ':appId');

  static const String name = 'AppRoute';
}

/// generated route for
/// [_i5.InstalledPage]
class InstalledRoute extends _i2.PageRouteInfo<void> {
  const InstalledRoute() : super(InstalledRoute.name, path: '');

  static const String name = 'InstalledRoute';
}

/// generated route for
/// [_i6.UpdatesPage]
class UpdatesRoute extends _i2.PageRouteInfo<void> {
  const UpdatesRoute() : super(UpdatesRoute.name, path: '');

  static const String name = 'UpdatesRoute';
}
