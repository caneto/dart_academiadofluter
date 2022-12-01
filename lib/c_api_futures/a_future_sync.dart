void main() {
  print('Init Main');
  Future<String>.sync(() {
    print('Função Future executada');
    return 'Resultado Future';
  }).then(print);

  print('Fim Main');

}