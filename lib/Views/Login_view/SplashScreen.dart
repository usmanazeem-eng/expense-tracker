import 'package:expense_tracker/Weiget/line.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/Views/Login_view/Login.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, Login.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF3A5BFF), Color(0xFF8A3CFF)],
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.wallet, color: Colors.white, size: 90),
            SizedBox(height: 20),

            Text(
              'Expense Tracker',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),

            Text(
              'Track • Save • Control',
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            SizedBox(height: 40),

            LoadingLine(),
          ],
        ),
      ),
    );
  }
}
