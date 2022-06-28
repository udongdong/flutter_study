// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i7;

import '../view/book_feed/book_feed.dart' as _i3;
import '../view/book_list/book_list_page.dart' as _i4;
import '../view/home.dart' as _i1;
import '../view/login.dart' as _i2;
import '../view/my_info/my_info.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.LoginPage(key: args.key, callback: args.callback));
    },
    BookFeedRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BookFeedPage());
    },
    BookListRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BookListPage());
    },
    MyInfoRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MyInfoPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeRoute.name, path: '/', children: [
          _i6.RouteConfig(BookFeedRoute.name,
              path: 'book-feed-page', parent: HomeRoute.name),
          _i6.RouteConfig(BookListRoute.name,
              path: 'book-list-page', parent: HomeRoute.name),
          _i6.RouteConfig(MyInfoRoute.name,
              path: 'my-info-page', parent: HomeRoute.name)
        ]),
        _i6.RouteConfig(LoginRoute.name, path: ' /login')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i8.Key? key, dynamic Function(bool)? callback})
      : super(LoginRoute.name,
            path: ' /login',
            args: LoginRouteArgs(key: key, callback: callback));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.callback});

  final _i8.Key? key;

  final dynamic Function(bool)? callback;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, callback: $callback}';
  }
}

/// generated route for
/// [_i3.BookFeedPage]
class BookFeedRoute extends _i6.PageRouteInfo<void> {
  const BookFeedRoute() : super(BookFeedRoute.name, path: 'book-feed-page');

  static const String name = 'BookFeedRoute';
}

/// generated route for
/// [_i4.BookListPage]
class BookListRoute extends _i6.PageRouteInfo<void> {
  const BookListRoute() : super(BookListRoute.name, path: 'book-list-page');

  static const String name = 'BookListRoute';
}

/// generated route for
/// [_i5.MyInfoPage]
class MyInfoRoute extends _i6.PageRouteInfo<void> {
  const MyInfoRoute() : super(MyInfoRoute.name, path: 'my-info-page');

  static const String name = 'MyInfoRoute';
}
