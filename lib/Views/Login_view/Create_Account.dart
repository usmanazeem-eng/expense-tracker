import 'package:expense_tracker/Views/HomeScreen/HomeScreen.dart';
import 'package:expense_tracker/Views/Login_view/Login.dart';
import 'package:expense_tracker/Weiget/App_Button.dart';
import 'package:expense_tracker/Weiget/App_Text_Field.dart';
import 'package:expense_tracker/Weiget/Register_Header.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  static const String id = '/create-account';

  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RegisterHeader(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Full Name'),
                  const SizedBox(height: 8),
                  const AppTextField(
                    icon: Icons.person_outline,
                    hint: 'Enter your full name',
                  ),

                  const SizedBox(height: 20),

                  const Text('Email Address'),
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
                    hint: 'Create a password',
                    isPassword: true,
                  ),

                  const SizedBox(height: 20),

                  const Text('Confirm Password'),
                  const SizedBox(height: 8),
                  const AppTextField(
                    icon: Icons.lock_outline,
                    hint: 'Confirm your password',
                    isPassword: true,
                  ),

                  const SizedBox(height: 30),

                  AppButton(
                    text: 'Register',
                    filled: true,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, HomeScreen.id);
                    },
                  ),

                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, Login.id);
                        },
                        child: const Text(
                          'Login',
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
