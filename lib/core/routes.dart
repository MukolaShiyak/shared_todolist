import 'package:flutter/material.dart';
import 'package:shared_todolist/core/splash_screen.dart';
import 'package:shared_todolist/features/auth/presentation/screens/sign_in_screen.dart';

class Routes {
  static const splash = '/';
  static const signIn = '/signIn';
  static const home = '/home';

  Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    final routeName = settings.name;
    final arguments = settings.arguments;

    switch (routeName) {
      case splash:
        return pageRouteBuilder(const SplashScreen(), routeName);

      case signIn:
        return pageRouteBuilder(const SignInScreen(), routeName);

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
