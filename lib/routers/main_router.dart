import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/login_screen.dart';
import '../ui/main_screen.dart';
import '../ui/splash_screen.dart';

class MainRouter {
  MainRouter._();

  static const SPLASH = '/';
  static const MAIN = '/main';
  static const LOGIN = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return GetPageRoute(
          settings: settings,
          page: () => const SplashScreen(),
        );
      case MAIN:
        return GetPageRoute(
          settings: settings,
          page: () => const MainScreen(),
        );
      case LOGIN:
        return GetPageRoute(
          settings: settings,
          page: () => const LoginScreen(),
        );
      default:
        return GetPageRoute(
          settings: settings,
          page: () => const Text('Empty page'),
        );
    }
  }
}
