void main() {
  Pessoa()
    ..nome = 'Carlos'
    ..email = 'caneto@gmail.com'
    ..site = 'teste.com.br'
    ..printPessoa();

  // pessoa.nome = 'Carlos Alberto';
  // pessoa.email = 'caneto@gmail.com';
  // pessoa.site = 'caneto.com.br';

  var mapa = <String, String>{}
    ..putIfAbsent('nome', () => 'Carlos Alberto')
    ..putIfAbsent('idade', () => '57')
    ..putIfAbsent('email', () => 'caneto@gmail.com');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
    Pessoa:
      Nome:  $nome
      Email: $email
      Site:  $site
   ''');
  }
}
