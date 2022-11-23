// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'curso.dart';
import 'endereco.dart';

class Aluno {
  String id;
  String nome;
  int idade;
  List<String> nomeCursos;
  Endereco endereco;
  List<Curso> cursos;

  Aluno({
    required this.id,
    required this.nome,
    required this.idade,
    required this.nomeCursos,
    required this.endereco,
    required this.cursos,
  });
}
