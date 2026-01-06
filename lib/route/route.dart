import 'package:expense_tracker/Views/Login.dart';
import 'package:expense_tracker/Views/SplashScreen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    SplashScreen.id: (context) => const SplashScreen(),
    Login.id: (context) => const Login(),
  };
}
