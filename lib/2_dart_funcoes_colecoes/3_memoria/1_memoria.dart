void main() {
  var lista = ['Carlos'];
  print(lista.hashCode);
  funcao(lista);
  print(lista);
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  nomes.add('Alberto');
}
