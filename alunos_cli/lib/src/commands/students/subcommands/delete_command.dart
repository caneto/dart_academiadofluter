import 'dart:io';
import 'package:args/command_runner.dart';

import '../../../respositories/student_repository.dart';

class DeleteCommand extends Command {
  StudentRepository studentRepository;
  
  @override
  String get description => "Delete Student";

  @override
  String get name => "delete";

  DeleteCommand(this.studentRepository) {
    argParser.addOption('id', help: 'Student ID', abbr: 'i');
  }

   @override
  Future<void> run() async {
    print('Aguarde ...');
    final id = argResults?['id'];

    if(id == null) {
      print('Por favor informe o id do aluno com o comando --id=0 ou -i 0');
      return;
    }

    print('Confirme a deleção do Aluno $id? (S ou N)');

    final showDelete = stdin.readLineSync();
    if(showDelete?.toLowerCase() == 'n') {
      return;
    }

    await studentRepository.deleteById(int.parse(id));

    print('............................................');
    print('Aluno deletado com sucesso');
  }
  
}