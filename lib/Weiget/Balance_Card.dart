import 'package:flutter/material.dart';
import 'Info_Card.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF3A5BFF),
            Color(0xFF1E40FF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Total Balance',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '\$6523.51',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              InfoCard(
                title: 'Income',
                amount: '\$5800.00',
                icon: Icons.arrow_downward,
                iconColor: Colors.green,
              ),
              SizedBox(width: 12),
              InfoCard(
                title: 'Expense',
                amount: '\$276.49',
                icon: Icons.arrow_upward,
                iconColor: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
