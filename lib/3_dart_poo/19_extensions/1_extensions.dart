import 'saudacao_string_extension.dart';
import 'pessoa_saudacao_extension.dart';
import 'pessoa.dart';

void main() {
  String nome = 'Carlos Alberto';
  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Cristiane');

  print(p1.saudacao());
}
