

import 'dart:async';
import 'dart:io';

void main() {
  print('Inicio main');
  print(temperaturaAtual());
  print(previsaoAmanha());
  print("Fim main");
}

String temperaturaAtual() {
  sleep(const Duration(seconds: 3));
  return  'Está fazendo 30';
}

String previsaoAmanha() {
  sleep(const Duration(seconds: 4));
  return 'Amanha fara 30';
}