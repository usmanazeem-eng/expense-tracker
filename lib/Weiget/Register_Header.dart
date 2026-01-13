import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF3A5BFF), Color(0xFF8A3CFF)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 36,
            backgroundColor: Colors.white24,
            child: Icon(Icons.person_add, color: Colors.white, size: 40),
          ),
          SizedBox(height: 16),
          Text(
            'Create Account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Login to manage your expenses',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
