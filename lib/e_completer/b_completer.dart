import 'dart:async';

Future<void> maim() async {
  final usuario = UsuarioRepository();

  //usuario.salvarComum((success) {
  //  print('Sucesso $success');
  //}, (error) { 
  //  print('Erro $error');
  //});

  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso completer $sucesso');
  } on Exception catch (e) {
    print('Erro: $e');
  }
  
}

class UsuarioRepository {

  void salvarComum(void Function(String) callbackSucess, void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        callbackSucess('Usuario salvo com sucesso');
      } on Exception catch (e) {
        callbackError('Erro');
      }
    });

  }

  Future<String> salvarCompleter() {
    final completer = Completer<String>();
     Timer(Duration(seconds: 2), () {
      try {
        completer.complete('Usuario salvo com sucesso');
      } on Exception catch (e) {
        completer.completeError('Erro');
      }
    });

    return completer.future;
  }
}