
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
}