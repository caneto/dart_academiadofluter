import 'package:args/args.dart';

void main(List<String> arguments) {
  final argParser = ArgParser();

  argParser.addFlag('data', abbr: 'd');
  argParser.addOption('name', abbr: 'n');
  argParser.addOption('template', abbr: 't');
  final argResult = argParser.parse(arguments);

  print('${argResult['d']} - ${argResult['data']}');
  print(argResult['d']);
}