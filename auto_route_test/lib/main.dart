import 'package:auto_route_test/routing/app_router.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routeInformationParser: _appRouter.defaultRouteParser(), routerDelegate: _appRouter.delegate());
  }
}
