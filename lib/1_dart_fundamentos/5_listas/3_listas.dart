void main() {
  final numeros = [1, 2, 3, 4];
  numeros.add(1);
  print(numeros);

  final nomes = ['Carlos', 'Cristiane', 'Sonia'];
  nomes.add('Teste');
  print(nomes[3]);
  print(nomes);

  nomes.insert(1, 'Marcos Antonio');
  print(nomes);

  nomes.insertAll(1, ['xfs', 'teste', 'Carlos', 'Carlos']);
  print(nomes);

  nomes.removeWhere((nome) => nome == 'Carlos');
  print(nomes);

  // print(nomes[0]) <- Substituir isso
  print(nomes.first);

  // print(nomes[nomes.length - 1]) substituir isso:
  print(nomes.last);

  final stringsGeradas = List.generate(10, (index) => 'teste número: $index');
  print(stringsGeradas);

  final repeticoes = List.filled(10, 'Carlos');
  print(repeticoes);

  final numerosGeradosParaCalculo = List.generate(10, (index) => index + 1);
  final somaNumeros = numerosGeradosParaCalculo.fold<int>(
      0, (previousValue, numero) => previousValue += numero);
  print(somaNumeros);

  // Spreed Operator
  var listaNumerosSpreedB = [4, 5, 6];
  var listaNumerosSpreed = [1, 2, 3, ...listaNumerosSpreedB];

  print(listaNumerosSpreedB);
  print(listaNumerosSpreed);

  // Colletion if
  var promocaoAtiva = false;
  var produtos = [
    'bolo',
    'pão',
    if (promocaoAtiva) 'Pão Doce',
  ];

  print(produtos);

  // Collection for
  var listaInts = [1, 2, 3];
  var listaStrings = [
    '#0',
    for (var i in listaInts) '#$i',
  ];
  print(listaStrings);
}
