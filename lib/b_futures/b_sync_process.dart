
import 'dart:async';

void main() {

  print('Inicio main');
  func1();
  func2();
  print("Fim main");

}


void func1() {
  print('Iniciando Func1');
  //Timer.run(() => print('Fazando algo complexo func 1'));
  Future.delayed(Duration(seconds: 2), () => print('Fazando algo complexo func 1'));
  print('Finalizando Func1');
}

void func2() {
  print('Iniciando Func2');
  //Timer.run(() => print('Fazando algo complexo func 2'));
  Future.delayed(Duration(seconds: 1), () => print('Fazando algo complexo func 2'));
  print('Finalizando Func2');
}