

Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async => 'Carlos Alberto ($id)';

Future<String> buscarNomeUsuario() {
  return buscarId().then((id) {
    return buscarNome(id).then((nome) {
      return 'Usuário: $nome';
    });
  });
}

Future<String> buscarNomeUsuarioAwait() async {
  final id = await buscarId();
  final nome = await buscarNome(id);
  return 'Usuário: $nome';
}

Future<void> main() async {
  print('Inicio');
  await buscarNomeUsuarioAwait().then(print);
  print('Fim');
}