
// Apartir do Flutter 2.8x com Dart 2.15.0

void main() {
  final nomes = ['Carlos', 'Cristiane', 'João', 'Regina'];

  final pessoas_antigo = nomes.map((nome) => Pessoa(nome)).toList();

  //final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  //final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  final pessoas = nomes.map<Pessoa>(Pessoa.fromJson).toList();
  
  for(var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer(Pessoa.new);
}


class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome) {
    return Pessoa(nome);
  }

}

void funcaoQualquer(void Function(String) funcao) {
  funcao('Carlos');
}