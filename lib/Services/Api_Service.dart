import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<String>> getCategories() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/products/categories'),
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);


      return data.map((item) => item['name'].toString()).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
