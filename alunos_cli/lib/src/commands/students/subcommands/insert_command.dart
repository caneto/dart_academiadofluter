
import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../models/student.dart';
import '../../../respositories/product_repository.dart';
import '../../../respositories/student_repository.dart';

class InsertCommand extends Command {
  final StudentRepository studentRepository;
  final ProductRepository productRepository;

  @override
  String get description => 'Insert Student';

  @override
  String get name => 'insert';

  InsertCommand(this.studentRepository) : productRepository = ProductRepository() {
    argParser.addOption('file', help: 'Path of the csv file', abbr: 'f');
  }
  
  @override
  void run() {
    print('Aguarde ...');
    final filePath = argResults?['file'];
    final students = File(filePath).readAsLinesSync();
    print('............................................');

    for (var student in students) {
      final studentData = student.split(';');
      final courseCsv = studentData[2].split(',').map((e) => e.trim()).toList();
      
      courseCsv.map((c) async {
        final course = await productRepository.findByName(c);
        course.isStudent = true;
        return course;
      });
      
    }

  }

}