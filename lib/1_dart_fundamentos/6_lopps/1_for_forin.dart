void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Cristiane', 'Marcos', 'Carlos Alberto', 'Monica'];

  // For convencional.
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  // For in
  for (var numero in numeros) {
    print(numero);
  }

  print("teste");
}
