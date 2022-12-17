
import 'package:args/command_runner.dart';

import '../../../respositories/product_repository.dart';
import '../../../respositories/student_repository.dart';

class UpdateCommand extends Command {
  StudentRepository studentRepository;
  final productRepository = ProductRepository();

  @override
  String get description => "Update Student";

  @override
  String get name => 'update';
  
  UpdateCommand(this.studentRepository) {
    argParser.addOption('file', help: 'Path of the csv file', abbr: 'f');
    argParser.addOption('id', help: 'Student ID', abbr: 'i');
  }
  
  @override
  void run() {

  }
}