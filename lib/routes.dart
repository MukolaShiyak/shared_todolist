import 'package:flutter/material.dart';
import 'package:shared_todolist/src/splash_screen/splash_screen.dart';

class Routes {
  static const splash = '/';
  static const home = '/home';

  Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    final routeName = settings.name;
    final arguments = settings.arguments;

    switch (routeName) {
      case splash:
        return pageRouteBuilder(const SplashScreen(), routeName);

      // case home:
      //   return pageRouteBuilder(const Home(), routeName);

      default:
        return null;
    }
  }

  PageRouteBuilder pageRouteBuilder(Widget destination, String? routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (context, animation, secondaryAnimation) => destination,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
