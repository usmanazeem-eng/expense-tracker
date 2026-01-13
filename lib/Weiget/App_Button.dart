import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool filled;
  final VoidCallback? onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.filled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: filled
              ? const LinearGradient(
                  colors: [Color(0xFF3A5BFF), Color(0xFF8A3CFF)],
                )
              : null,
          borderRadius: BorderRadius.circular(16),
          border: filled ? null : Border.all(color: const Color(0xFF3A5BFF)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: filled ? Colors.white : const Color(0xFF3A5BFF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
