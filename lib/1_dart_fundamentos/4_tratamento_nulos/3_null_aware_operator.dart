String? nome;

void main() {
  var sobrenome = 'Costa';
  var nomeCompleto = (nome ?? 'Carlos ') + sobrenome;
  print(nomeCompleto);
}
