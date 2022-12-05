import 'dart:async';

void main() {

  buscarAlgo(02)
    .then((value) => print('Mensagem: $value'))
    .catchError((error) => print('Error: $error')); 
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if(numero == 0) {
      completer.complete('Numero eviado com sucesso');
    } else {
      completer.completeError('Numero enviado com erro', StackTrace.current);
    }
  });

  return completer.future;
}