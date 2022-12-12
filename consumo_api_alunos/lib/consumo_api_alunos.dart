import 'package:consumo_api_alunos/repositories/aluno_repository.dart';

Future<void> main() async {
  final alunoRepository = AlunoRepository();

  final alunos = await alunoRepository.buscarTodos();

  print(alunos);

  final aluno = await alunoRepository.buscarPorId(1);

  print(aluno.nome);
  print(aluno.nomeCursos);

  print('${aluno.nome} tem os cursos: ');

  for (var curso in aluno.cursos) {
    if(curso.isAluno) {
      print(curso.nome);
    }
  }
}