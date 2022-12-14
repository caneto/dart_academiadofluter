import 'package:alunos_cli/src/commands/students/studants_command.dart';
import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:test/expect.dart';

void main(List<String> arguments) {
  //final argParser = ArgParser();

  //argParser.addFlag('data', abbr: 'd');
  //argParser.addOption('name', abbr: 'n');
  //argParser.addOption('template', abbr: 't');
  //final argResult = argParser.parse(arguments);

  //print('${argResult['data']}');
  //print('${argResult['name']}');
  //print('${argResult['template']}');

  CommandRunner('ALUNOS CLI', 'ALUNOS CLI')
    ..addCommand(StudantsCommand())
    ..run(arguments);
}

