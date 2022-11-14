import 'cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Carlos', telefone: '98764321');
  var c2 = Cliente(nome: 'Cristiane', telefone: '98764321');
  var c3 = Cliente(nome: 'Sonia', telefone: '98764321');
  var c4 = Cliente(nome: 'Julia', telefone: '98764321');

  var lista = [c1, c2, c3, c4];
  print(lista);

  lista.sort();
  print(lista);
}
