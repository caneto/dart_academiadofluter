
import 'package:dart_fundamentos/4_async/10_dart_consumo_api/models/aluno.dart';
import 'package:dart_fundamentos/4_async/10_dart_consumo_api/models/cidade.dart';
import 'package:dart_fundamentos/4_async/10_dart_consumo_api/models/curso.dart';
import 'package:dart_fundamentos/4_async/10_dart_consumo_api/models/endereco.dart';
import 'package:dart_fundamentos/4_async/10_dart_consumo_api/models/telefone.dart';
import 'package:dart_fundamentos/4_async/10_dart_consumo_api/repositories/alunos_repository.dart';

class AlunosController {

  final _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();

    alunos.forEach(print);
  }
  

  Future<void> findById(String id) async {
    final aluno = await _alunosRepository.findById(id);

    print(aluno);
  }

  Future<void> update() async {
    final aluno = await _alunosRepository.findById('1');

    aluno.nomeCursos.add("Aula extra");
    await _alunosRepository.update(aluno);

    final alunoAlterado = await _alunosRepository.findById('1');


    print(alunoAlterado.nomeCursos);
  }

  Future<void> insert() async {
    final aluno = Aluno(
      nome: "Teste",
      idade: 57, 
      nomeCursos: ['Cursos'],
      endereco: Endereco(rua: 'Rua Assis Carneiro,', 
                         numero: 80, 
                         cep: '20740260', 
                         cidade: Cidade(id: 1, 
                                        nome: 'Rio de Janeiro'),
                         telefone: Telefone(
                          ddd: 21,
                          telefone: '990099999'),
      ), 
      cursos: [
        Curso(id: 1, nome: 'Curso Extra', isAluno: true)
      ]);

    await _alunosRepository.insert(aluno);
  }
}