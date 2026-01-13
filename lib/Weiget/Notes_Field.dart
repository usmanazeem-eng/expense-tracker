import 'package:flutter/material.dart';

class NotesField extends StatelessWidget {
  const NotesField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 2,
      decoration: _decoration('Notes', 'Add a note...'),
    );
  }

  InputDecoration _decoration(String label, String hint) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      filled: true,
      fillColor: Colors.grey.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    );
  }
}
