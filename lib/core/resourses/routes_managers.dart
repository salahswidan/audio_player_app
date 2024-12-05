import 'package:flutter/material.dart';

import '../../features/splash/screens/splash_screen.dart';

class RoutesManagers {
  static Map<String, WidgetBuilder> routes = {
    RouteNames.kSplashScreen : (context) => const SplashScreen(),
  };
}

class RouteNames {
  static const String kSplashScreen = '/kSplashScreen';
  // static const String home = '/home';
}