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
    ..addCommand(ExemploCommand())
    ..run(arguments);
}

class ExemploCommand extends Command {

  @override 
  String get description => 'Exemplo de Comando';


  @override
  String get name => 'exemplo';

  ExemploCommand() {
    argParser.addOption('template', abbr: 't', help: 'Templete de Criação do projeto');
  }

  @override
  void run() {
    print(argResults?['template']);
    print('Executar qualquer coisas !!!!!');
  }  
  
}