import 'pessoa.dart';

void main() {
  var p1 = Pessoa(
    nome: 'Carlos Alberto',
    email: 'caneto@gmail.com',
    telefone: '9812345678',
  );
  var p2 = Pessoa(
    nome: 'Carlos Alberto',
    email: 'caneto@gmail.com',
    telefone: '9812345678',
  );
  // String p2 = 'Carlos';

  print("Intância do Hash code P1: ${p1.hashCode}");
  print("Intância do Hash code p2: ${p2.hashCode}");
  print(p1);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }
}
