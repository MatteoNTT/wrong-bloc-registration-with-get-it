// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../presentation/pages/main_page.dart' as _i1;
import '../../presentation/pages/secondary_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    SecondaryRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SecondaryPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/main', fullMatch: true),
        _i3.RouteConfig(MainRoute.name, path: '/main'),
        _i3.RouteConfig(SecondaryRoute.name, path: '/secondary')
      ];
}

/// generated route for [_i1.MainPage]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute() : super(name, path: '/main');

  static const String name = 'MainRoute';
}

/// generated route for [_i2.SecondaryPage]
class SecondaryRoute extends _i3.PageRouteInfo<void> {
  const SecondaryRoute() : super(name, path: '/secondary');

  static const String name = 'SecondaryRoute';
}
