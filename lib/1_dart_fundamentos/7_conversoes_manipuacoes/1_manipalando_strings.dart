void main() {
  final nome = 'Carlos';

  var subStringNome = nome.substring(4);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 4);
  print(subStringNome2);

  var sexo = 'Feminino';

  if (sexo.toLowerCase().startsWith('masc')) {
    print('Masculino');
  }

  if (sexo.toUpperCase().startsWith('FEM')) {
    print('Feminino');
  }

  if (sexo.toLowerCase().contains('nino')) {
    print('Existe');
  }

  // Interpolação
  var primeiroNome = 'Carlos';
  var segundoNome = 'Alberto';
  var saudacao = 'Seu nome é: ${primeiroNome.toUpperCase()} $segundoNome';
  print(saudacao);

  var paciente = 'Cristiane Oliveira|Especialista em CLT|54|RJ';
  print(paciente.split('|'));
}
