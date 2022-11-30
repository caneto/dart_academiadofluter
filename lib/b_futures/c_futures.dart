
void main() {
  // Future -> Inclompleto, Completo com Sucesso, Completo com Erro;

  Future(() {
    // Funcao assincrona
  }).then((value) {
    // reigstrando função que será executado quando o futuro for completado com sucesso!
  }).catchError((error) {
    // Registrando função que será executando quando o futuro for completado com erro!!!
  }).whenComplete(() {
    // Registrado a função que será executada SEMPRE (quando erro ou sucersso)!
  });
}