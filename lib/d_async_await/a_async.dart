
void main() {

  final nome = metodoAssincronoSemAsync();
  final nome2 = metodoAssincrono();
  print(nome2);

  nome.then(print).catchError(print);

  metodoAssincronoVoid().whenComplete(() => print('Finalizou o void'));

}

Future<String> metodoAssincronoSemAsync() {
  return Future.value("Carlos Alberto");
}

Future<String> metodoAssincrono() async {
  return "Carlos Alberto";
}

Future<void> metodoAssincronoVoid() async {

}