// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dart_fundamentos/3_dart_poo/25_conversions/aluno.dart';
import 'package:dart_fundamentos/3_dart_poo/25_conversions/curso.dart';

void main() {
  var frutas = [
    Fruta('banana'),
    Fruta('abacaxi'),
    Fruta('maça')
  ];

  var frutasMap = [
    {'nome':'banana'},
    {'nome':'abacaxi'},
    {'nome':'maça'}
  ];

//  List<Suco> sucos = [];
//  for(var fruta in frutas) {
//    final suco = Suco(sabor: fruta.nome);
//    sucos.add(suco);
//  }

  var sucos = frutas.map((fruta) => Suco(sabor: fruta.nome)).toList();
  var sucos2 = frutasMap.map((frutaMap) => Suco(sabor: frutaMap['nome'] ?? 'Sem Sabor')).toList();

  print(sucos);
  print(sucos2);

  var alunoAdf = <String, Object> {
    'nome': 'Carlos Alberto',
    'cursos': [
      {
        'nome':'Academia do Fluter',
        'descricao': 'Melhor curso de Flutter do Brasil',
      },
      {
        'nome':'Imersao Getx',
        'descricao': 'Imersão Getx',
      },
      {
        'nome':'Imersao Código Limpo',
        'descricao': 'Imersão em Código Limpo',
      },
    ]
  };

  final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;
  final cursos = cursosMap.map((curso) {
    var nome = curso['nome'] as String;
    var descricao = curso['descricao'] as String;

    return Curso(nome: nome, descricao: descricao);
  }).toList();

  final nomeAluno = alunoAdf['nome'] as String;

  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);

}

class Suco {
  String sabor;
  
  Suco({
    required this.sabor,
  });

  @override
  String toString() {
    return 'Suco sabor $sabor';
  }
}

class Fruta {
  String nome;
  Fruta(this.nome);
}