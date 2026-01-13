import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool isPassword;

  const AppTextField({
    super.key,
    required this.icon,
    required this.hint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          icon: Icon(icon, color: Colors.grey),
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
