import 'dart:async';

Future<void> main() async {

  // final aguardando = inserindoAlgoBemLento();

  print(DateTime.now().toIso8601String());

//  aguardando
//    .timeout(Duration(seconds: 1))
//    .catchError((erro) {
//      print('Terminou com erro $erro');
//    });



  try {
    final aguardando = await inserindoAlgoBemLento().timeout(Duration(seconds: 1));
  } on TimeoutException catch (e) {
    print('Finalizou com timeout $e');
  }

}


Future<void> inserindoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}