import 'pessoa.dart';

void main() {
  var pessoa = Pessoa(
    nome: 'Carlos Alberto',
    idade: 57,
    sexo: 'Masculino',
  );
  print(pessoa.nome);

  // Construtor nomeado
  var pessoaNomeado = Pessoa.semNome(
    idade: 19,
    sexo: 'Feminino',
  );
  print(pessoaNomeado.nome);

  var pessoaOperacao = Pessoa.operacao('Carlos Alberto');
  print(pessoaOperacao.nome);
}
