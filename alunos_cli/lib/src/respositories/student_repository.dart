
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/student.dart';

class StudentRepository {
  
  Future<List<Student>> findAll() async {
    final studentResult = await http.get(Uri.parse('http://localhost:8082/students'));

    if(studentResult != 200) {
      throw Exception();
    }

    final studentsData = jsonDecode(studentResult.body);

    return studentsData.map<Student>((student) {
      return Student.fromMap(student);
    }).toList();
  }

  Future<Students> findById(int id) {}

  Future<void> insert(Student student) {}

  Future<void> update(Student student) {}

  Future<void> deleteById(int id) {}


}