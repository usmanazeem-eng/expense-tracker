import 'package:flutter/material.dart';

class DateField extends StatelessWidget {
  final DateTime date;
  final ValueChanged<DateTime> onSelect;

  const DateField({
    super.key,
    required this.date,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: _decoration(
        'Date',
        '${date.month}/${date.day}/${date.year}',
      ),
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: date,
          firstDate: DateTime(2020),
          lastDate: DateTime.now(),
        );
        if (picked != null) onSelect(picked);
      },
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
