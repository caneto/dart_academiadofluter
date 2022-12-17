import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import '../models/course.dart';

class ProductDioRepository {
  
  Future<Course> findByName(String name) async {
    //final response = await http.get(Uri.parse('http://localhost:8082/products?name=$name'));

    try {
      final response = await Dio().get('http://localhost:8082/products?name=$name');
       
      //final responseData = jsonDecode(response.body);
      
      if(response.data.isEmpty) {
        throw Exception('Produto não encontrado');
      }
      
      return Course.fromMap(response.data.first);
    } on DioError {
      throw Expando();
    }
  }
}