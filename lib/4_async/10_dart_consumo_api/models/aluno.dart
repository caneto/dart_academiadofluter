// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'idade': idade,
      'nomeCursos': nomeCursos,
      'endereco': endereco.toMap(),
      'cursos': cursos.map((x) {return x.toMap();}).toList(growable: false),
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: (map["id"] ?? '') as String,
      nome: (map["nome"] ?? '') as String,
      idade: (map["idade"] ?? 0) as int,
      nomeCursos: List<String>.from(((map['nomeCursos'] ?? const <String>[]) as List<String>),),
      endereco: Endereco.fromMap((map["endereco"]?? Map<String,dynamic>.from({})) as Map<String,dynamic>),
      cursos: List<Curso>.from(((map['cursos'] ?? const <Curso>[]) as List).map<Curso>((x) {return Curso.fromMap((x?? Map<String,dynamic>.from({})) as Map<String,dynamic>);}),),
    );
  }

  String toJson() => json.encode(toMap());

  factory Aluno.fromJson(String source) => Aluno.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, nomeCursos: $nomeCursos, endereco: $endereco, cursos: $cursos)';
  }
}
