import 'dart:io';
import 'package:args/command_runner.dart';

import '../../../respositories/student_repository.dart';

class DeleteCommand extends Command {
  StudentRepository studentRepository;
  
  @override
  String get description => "Delete Student by id";

  @override
  String get name => "delete";

  DeleteCommand(this.studentRepository) {
    argParser.addOption('id', help: 'Student ID', abbr: 'i');
  }

   @override
  Future<void> run() async {
    final id = int.tryParse(argResults?['id']);

    if(id == null) {
      print('Por favor informe o id do aluno com o comando --id=0 ou -i 0');
      return;
    }

    print('Aguarde.....');
    final student = await studentRepository.findById(id);

    print('Confirme a exclusão do Aluno ${student.name}? (S ou N)');

    final confirmDelete = stdin.readLineSync();
    if(confirmDelete?.toLowerCase() == 's') {
       await studentRepository.deleteById(id);
       print('............................................');
       print('Aluno deletado com sucesso');
       print('............................................');
    } else {
       print('............................................');
       print('Operação Cancelada!!!!');
       print('............................................');
       return;
    }

  }
  
}