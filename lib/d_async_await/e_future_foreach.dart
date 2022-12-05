
Future<void> main() async {
  print('Inicio');
  final nomes = ['Carlos', 'Cristiane', 'Julio', 'Fernando'];

  //nomes.forEach((nome) async {
  //  final saudacaoNome = await saudacao(nome);
  //  print(saudacaoNome);
  //});

  ///for (var nome in nomes) {
  //  await tratarSaudacao(nome);
 // }

 //Future.forEach<String>(nomes, (nome) async {
 //  await tratarSaudacao(nome);
 //});

 final nomesFuture = nomes.map((nome) => saudacao(nome),).toList();

 final nomesProcessados = await Future.wait(nomesFuture);

 print(nomesProcessados);

  print('Fim');
}

Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}

Future<String> saudacao(String nome) async {
  print('Inicio saudacao $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim Saudacao nome: $nome');
    return 'Olá $nome';
  });

}