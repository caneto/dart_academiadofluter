
void main() {
/*  print('Levando o carro para o mecanico');

  Future<int>(() {
    // função assincrona que vai fazer o orcamento da manutenção do nosso carro!
    return 10 ~/ 2;
  }).then((valorOrcamento) {
    print('O orcamento para arrumar o carro é de $valorOrcamento');
  });

  print('Saindo da mecanica');


  print('fui viajar');

  Future<String>(() {
    // Indo para USA
    throw Exception('Avião caiu');
    return 'MacBook Comprado';
  }).then((comprado) {
    print('comprei meu macbook');
  }).catchError((error) {
    print('Deu Ruim o Avião Caiu');
  }).whenComplete(() {
    print('Finalizado');
  });

  Future<int>(() {
    return 10 ~/2;
  }).then((value) => print('Valor calculado é $value'));

  Future<int>(() {
    return 10 ~/0;
  }).then(
    (value) => print('Valor calculado é $value'),
    onError: (error) {
      print('Ocorreu um erro $error');
      throw Exception('outro error');
    }).catchError((error) {
      print('Ocorreu um erro no CatchEror $error');
    });*/

  Future<int>(() {
    throw Exception('x');
    return 10 ~/0;
  }) // Future
   .then(
    (value) => print('Valor calculado é $value'))
   .catchError(
    (error) {
      print('Ocorreu um erro no CatchEror $error');
    }, 
    test: (error) => error is UnsupportedError,
  ).catchError(
    (error) {
      print('Ocorreu um erro no CatchEror2 $error');
    }, 
    test: (error) => error is Exception,
  );


}