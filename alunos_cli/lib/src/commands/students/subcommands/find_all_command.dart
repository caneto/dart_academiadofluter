
import 'dart:io';

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
  Future<void> run() async {
    print('Aguarde buscando alunos,,,');
    final students = await repository.findAll();
    print('Aprensentar também os cursos? (S ou N)');

    final showCourses = stdin.readLineSync();
    print('---------------------------------------');
    print('Alunos:');
    print('---------------------------------------');
    for (var student in students) {
      if(showCourses?.toLowerCase() == 's') {
        print('${student.id} - ${student.name} ${student.courses.where((course) => course.isStudent).map((e) => e.name).toList()}');
      } else {
        print('${student.id} - ${student.name}');  
      }
    }
  }
  
}