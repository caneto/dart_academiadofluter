import 'package:dio/dio.dart';
import '../models/course.dart';

class ProductDioRepository {
  Future<Course> findByName(String name) async {
    try {
      final response = await Dio().get(
        'http://localhost:8082/products', 
        queryParameters: {
          'name': name,
        },
      );

      if (response.data.isEmpty) {
        throw Exception('Produto não encontrado');
      }

      return Course.fromMap(response.data.first);
    } on DioError {
      throw Expando();
    }
  }
}
