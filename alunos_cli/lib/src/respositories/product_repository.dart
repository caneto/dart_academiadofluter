import 'package:http/http.dart' as http;
import '../models/course.dart';

class ProductRepository {
  
  Future<Course> findByName(String name) async {
    final response = await http.get(Uri.parse('http://localhost:8082/products?name=$name'));
  }
}