
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:consumo_api_alunos/models/aluno.dart';


class AlunoRepository {
  Future<List<Aluno>> buscarTodos() async {
    final alunosResponse = await http.get(Uri.parse('http://localhost:8081/alunos'));

    final alunosList = jsonDecode(alunosResponse.body);

    final todosAlunos = alunosList.map<Aluno>((alunoMap) {
      return Aluno.fromMap(alunoMap);
    }).toList();

    return todosAlunos;
    //return alunosList
    //    .map<Aluno>((alunoMap) => Aluno.fromMap(alunoMap))
    //    .toList();

  }

  Future<Aluno> buscarPorId(int id) async {
    final alunosResponse = await http.get(Uri.parse('http://localhost:8081/alunos/$id'));

    return Aluno.fromJson(alunosResponse.body);
  }
}