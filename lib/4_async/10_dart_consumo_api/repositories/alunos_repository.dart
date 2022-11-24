
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/aluno.dart';

class AlunosRepository {

  Future<List<Aluno>> findAll() async {
    final alunoResponse = await http.get(Uri.parse('http://localhost:3031/alunos'));
    
    final alunosList = jsonDecode(alunoResponse.body);

    return alunosList.map<Aluno>((alunoMap) {
      return Aluno.fromMap(alunoMap);
    }).toList();
  }

  Future<Aluno> findById(String id) async {
    final alunoResponse = await http.get(Uri.parse('http://localhost:3031/alunos/$id'));
    //final alunoMap = jsonDecode(alunoResponse.body);
    //return Aluno.fromMap(alunoMap);

    return Aluno.fromJson(alunoResponse.body);

  }

  

}