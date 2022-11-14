import 'pessoa.dart';

void main() {
  var p1 = const Pessoa(nome: 'Carlos Alberto', idade: 57);
  var p2 = const Pessoa(nome: 'Carlos Alberto', idade: 57);

  print(p1 == p2);
}
