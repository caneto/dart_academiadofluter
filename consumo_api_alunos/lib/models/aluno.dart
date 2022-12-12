// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:consumo_api_alunos/models/curso.dart';
import 'package:consumo_api_alunos/models/endereco.dart';

class Aluno {
  int id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  List<Curso> cursos;
  Endereco endereco;
  
  Aluno({
    required this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.cursos,
    required this.endereco,
  });
}
