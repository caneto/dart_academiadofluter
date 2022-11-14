import 'dart:io';

import 'fazer.dart';

@Fazer(
  quem: 'Carlos',
  oque: 'Testando anotações de classe',
)
@gzip
class Pessoa {
  @Fazer(
    quem: 'Carlos no atributo',
    oque: 'Testando anotações do atributo',
  )
  String? nome;

  @Fazer(
    quem: 'Carlos no MÉTODO',
    oque: 'Testando anotações do método',
  )
  void fazerAlgo() {}
}
