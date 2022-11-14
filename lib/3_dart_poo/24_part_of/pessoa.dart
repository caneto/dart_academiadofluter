import 'package:dart_fundamentos/3_dart_poo/24_part_of/cpf.dart';
import 'package:dart_fundamentos/3_dart_poo/24_part_of/telefone.dart';

// O importe tem que estar sempre por ultimo 

part 'endereco.dart';

class Pessoa {
  String? nome;

  // Composição
  // Quando um atributo é obrigatorio
  // Nós estamos falando de composição
  _Endereco endereco = new _Endereco();
  CPF cpf = CPF();


  // Agregação
  // Quando um atributo de associação não é obrigatorio
  // Nós estmaos falando de agregação
  Telefone? telefone;

}
