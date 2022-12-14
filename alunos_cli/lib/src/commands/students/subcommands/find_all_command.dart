
import 'package:args/command_runner.dart';

import '../../../respositories/student_repository.dart';

class FindAllCommand extends Command {

  final StudentRepository repository;

  @override
  String get description => 'Find all Students';

  @override
  String get name => 'findAll';

  FindAllCommand(this.repository);

  @override
  void run() {
    print('Rodando o find All');
  }
  
}