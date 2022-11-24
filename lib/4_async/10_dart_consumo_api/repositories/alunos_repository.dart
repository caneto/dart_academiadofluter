
import 'package:http/http.dart' as http;

import '../models/aluno.dart';

class AlunosRepository {

  Future<List<Aluno>> findAll() async {
    final alunoResponse = await http.get(Uri.parse('http://localhost:3031/alunos'));
    

    return [];

  }
  

}