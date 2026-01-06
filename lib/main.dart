import 'package:expense_tracker/Views/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: AppRoutes.routes,
    );
  }
}
