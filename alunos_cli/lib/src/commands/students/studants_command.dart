
import 'package:args/command_runner.dart';

import '../../respositories/student_repository.dart';
import 'subcommands/find_all_command.dart';

class StudantsCommand extends Command {
  @override
  String get description => 'Studentes Operations';

  @override
  String get name => 'students';


  StudantsCommand() {
    final studentRepository = StudentRepository();
    addSubcommand(FindAllCommand(studentRepository));

  }
  
}