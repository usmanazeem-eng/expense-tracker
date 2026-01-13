import 'package:flutter/material.dart';
import '../../../Services/api_service.dart';

class CategoryField extends StatefulWidget {
  const CategoryField({super.key});

  @override
  State<CategoryField> createState() => _CategoryFieldState();
}

class _CategoryFieldState extends State<CategoryField> {
  String? selectedCategory;
  final TextEditingController customController = TextEditingController();
  late Future<List<String>> _categoriesFuture;

  @override
  void initState() {
    super.initState();
    _categoriesFuture = ApiService.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: _categoriesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return const Text('Failed to load categories');
        }

        final categories = [...snapshot.data!, 'Other'];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              value: selectedCategory,
              hint: const Text('Select a category'),
              items: categories.map((cat) {
                return DropdownMenuItem(
                  value: cat,
                  child: Text(cat),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Category',
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),


            if (selectedCategory == 'Other') ...[
              const SizedBox(height: 12),
              TextField(
                controller: customController,
                decoration: InputDecoration(
                  labelText: 'Custom Category',
                  hintText: 'Enter category name',
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
