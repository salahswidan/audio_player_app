import 'package:audio_player_app/features/home/screens/home_screen.dart';
import 'package:audio_player_app/features/on_boarding/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/splash/screens/splash_screen.dart';

class RoutesManagers {
  static Map<String, WidgetBuilder> routes = {
    RouteNames.kSplashScreen : (context) => const SplashScreen(),
    RouteNames.kOnBoardingScreen : (context) => const OnBoardingScreen(),
    RouteNames.kHomeScreen : (context) => const HomeScreen(),
  };
}

class RouteNames {
  static const String kSplashScreen = '/kSplashScreen';
  static const String kOnBoardingScreen = '/kOnBoardingScreen';
  static const String kHomeScreen = '/kHomeScreen';

  // static const String home = '/home';
}