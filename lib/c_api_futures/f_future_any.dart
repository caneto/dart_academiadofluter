void main() {
  print('Init Main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'F1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'F2');
  var f3 = Future.delayed(Duration(seconds: 1), () => 'F3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'F4');
  var f5 = Future.delayed(
      Duration(seconds: 1), () => Future.error('Erro na execução'));

  Future.any([f1, f2, f3, f4, f5])
    .then(print)
    .catchError(print);

  print('Fim Main');
}
