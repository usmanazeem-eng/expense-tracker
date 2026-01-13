import 'package:flutter/material.dart';

class TransactionTypeToggle extends StatelessWidget {
  final bool isExpense;
  final ValueChanged<bool> onChanged;

  const TransactionTypeToggle({
    super.key,
    required this.isExpense,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _button('Expense', true, Colors.red),
        const SizedBox(width: 12),
        _button('Income', false, Colors.green),
      ],
    );
  }

  Widget _button(String text, bool value, Color color) {
    final active = isExpense == value;
    return Expanded(
      child: GestureDetector(
        onTap: () => onChanged(value),
        child: Container(
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: active ? color : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: active ? Colors.white : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
