import 'package:flutter/material.dart';
import '../../Weiget/Balance_Card.dart';
import '../../Weiget/Recent_Transactions.dart';
import '../AddTransaction/Add_Transaction.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Expense Tracker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3A5BFF),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      // 🔵 BODY
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              BalanceCard(),
              SizedBox(height: 20),
              RecentTransactions(),
              SizedBox(height: 80), // bottom bar space
            ],
          ),
        ),
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF3A5BFF),
        onPressed: () {

            Navigator.pushNamed(context, AddTransactionScreen.id);

        },
        child: const Icon(Icons.add, size: 30, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              IconButton(
                icon: const Icon(
                  Icons.home, color: Color(0xFF3A5BFF), size: 40,),
                onPressed: () {},
              ),

              const SizedBox(width: 40),

              // Settings
              IconButton(
                icon: const Icon(
                  Icons.settings, color: Color(0xFF3A5BFF), size: 40,),
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
