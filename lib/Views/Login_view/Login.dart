import 'package:expense_tracker/Views/HomeScreen/HomeScreen.dart';
import 'package:expense_tracker/Views/Login_view/Create_Account.dart';
import 'package:expense_tracker/Weiget/App_Button.dart';
import 'package:expense_tracker/Weiget/App_Text_Field.dart';
import 'package:expense_tracker/Weiget/Login_Header.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String id = '/login';

  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginHeader(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email or Username'),
                  const SizedBox(height: 8),
                  const AppTextField(
                    icon: Icons.email_outlined,
                    hint: 'Enter your email',
                  ),

                  const SizedBox(height: 20),

                  const Text('Password'),
                  const SizedBox(height: 8),
                  const AppTextField(
                    icon: Icons.lock_outline,
                    hint: 'Enter your password',
                    isPassword: true,
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?'),
                    ),
                  ),

                  const SizedBox(height: 20),

                  AppButton(
                    text: 'Login',
                    filled: true,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, HomeScreen.id);
                    },
                  ),

                  const SizedBox(height: 14),

                  const AppButton(text: 'Continue as Guest', filled: false),

                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            CreateAccountScreen.id,
                          );
                        },
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            color: Color(0xFF3A5BFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
