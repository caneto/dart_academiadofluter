
import 'package:args/command_runner.dart';

import '../../respositories/student_repository.dart';
import 'subcommands/find_all_command.dart';
import 'subcommands/find_by_id_command.dart';
import 'subcommands/insert_command.dart';
import 'subcommands/update_command.dart';

class StudantsCommand extends Command {
  @override
  String get description => 'Studentes Operations';

  @override
  String get name => 'students';


  StudantsCommand() {
    final studentRepository = StudentRepository();
    addSubcommand(FindAllCommand(studentRepository));
    addSubcommand(FindByIdCommand(studentRepository));
    addSubcommand(InsertCommand(studentRepository));
    addSubcommand(UpdateCommand(studentRepository));
  }
  
}