import 'package:flutter/material.dart';
import '../../Weiget/Amount_Field.dart';
import '../../Weiget/Category_Field.dart';
import '../../Weiget/Date_Field.dart';
import '../../Weiget/Notes_Field.dart';
import '../../Weiget/Transaction_Type_Toggle.dart';

class AddTransactionScreen extends StatefulWidget {
  static const String id = '/add-transaction';

  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  bool isExpense = true;
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Add Transaction',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF3A5BFF),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Type",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
              ),
              const SizedBox(height: 10),
              TransactionTypeToggle(
                isExpense: isExpense,
                onChanged: (value) {
                  setState(() => isExpense = value);
                },
              ),
              const SizedBox(height: 25),

              const Text(
                "Details",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const AmountField(),
                    const Divider(height: 30),
                    const CategoryField(),
                    const Divider(height: 30),
                    DateField(
                      date: selectedDate,
                      onSelect: (date) {
                        setState(() => selectedDate = date);
                      },
                    ),
                    const Divider(height: 30),
                    const NotesField(),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3A5BFF),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 2,
                    shadowColor: const Color(0xFF3A5BFF).withOpacity(0.4),
                  ),
                  child: const Text(
                    'Save Transaction',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
