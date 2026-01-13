import 'package:expense_tracker/Views/HomeScreen/HomeScreen.dart';
import 'package:expense_tracker/Views/Login_view/Create_Account.dart';
import 'package:expense_tracker/Views/Login_view/Login.dart';
import 'package:expense_tracker/Views/Login_view/SplashScreen.dart';
import 'package:flutter/material.dart';

import '../Views/AddTransaction/Add_Transaction.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    SplashScreen.id: (context) => const SplashScreen(),
    Login.id: (context) => const Login(),
    CreateAccountScreen.id: (context) => const CreateAccountScreen(),
    HomeScreen.id: (context) => const HomeScreen(),
    AddTransactionScreen.id: (context) => const AddTransactionScreen(),
  };
}
