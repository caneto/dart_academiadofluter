

Future<void> main() async {
  print('Inicio');
  try {
    final id = await buscarId();
    final nome = await buscarNome(id);

    print('O nome é $nome');
    print('Fim');
  } catch(e) {
    print("aconteceu um erro!!!");
  }
}

Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async {

  throw Exception();
  return 'Carlos Alberto ($id)';
}

