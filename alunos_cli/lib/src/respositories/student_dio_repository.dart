import 'package:dio/dio.dart';
import '../models/student.dart';

class StudentDioRepository {
  Future<List<Student>> findAll() async {
    try {
      final studentsResult = await Dio().get('http://localhost:8082/students');

      return studentsResult.data.map<Student>((student) {
        return Student.fromMap(student);
      }).toList();
    } on DioError {
      throw Expando();
    }
  }

  Future<Student> findById(int id) async {
    try {
      final studentsResult = await Dio().get(
        'http://localhost:8082/students',
        queryParameters: {
          'id': id,
        },
      );

      if (studentsResult.data == null) {
        throw Exception();
      }

      return Student.fromMap(studentsResult.data.body);
    } on DioError {
      throw Exception();
    }
  }

  Future<void> insert(Student student) async {
    try {
      Dio().post(
        'http://localhost:8082/students',
        data: student.toMap()
      );
    } on DioError catch (e) {
      print(e);
      throw Exception();
    }
  }

  Future<void> update(Student student) async {
    try {
      Dio().put(
        'http://localhost:8082/students/${student.id}',
        data: student.toMap()
      );
    } on DioError catch (e) {
      print(e);
      throw Exception();
    }
  }

  Future<void> deleteById(int id) async {
     try {
      Dio().delete(
        'http://localhost:8082/students/$id',
      );
    } on DioError catch (e) {
      print(e);
      throw Exception();
    }
  }
}
