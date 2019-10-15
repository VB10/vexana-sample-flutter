import 'package:flutter/material.dart';

class Router {
static  const String homeRoute = '/';
static const String feedRoute = 'feed';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Container());
      case feedRoute:
        return MaterialPageRoute(builder: (_) => Container());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}