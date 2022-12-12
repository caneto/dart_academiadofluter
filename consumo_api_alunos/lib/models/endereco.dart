// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:consumo_api_alunos/models/cidade.dart';
import 'package:consumo_api_alunos/models/telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });
}
