
import 'package:dart_fundamentos/4_async/11_dart_consumo_api_desafio/controller/filme_controller.dart';

import '../models/filme.dart';

Future<void> main() async {

  //FilmeController().findAll();
  Filme filme = await FilmeController().findById('774825');

  print(filme);

}