
void main() {

  Future(() {});  // -> Incompleto vai ser executando ainda!!!

  Future.value(''); // -> Sucesso
  Future.error(''); // -> Erro 

}


Future<String> fanc1() {
  return Future.value('Qualquer Valor de sucesso');
}