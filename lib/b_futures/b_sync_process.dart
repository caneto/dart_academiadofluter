
import 'dart:async';

void main() {

  print('Inicio main');
  func1(1);
  func1(2);
  func1(3);
  func2();
  print("Fim main");

}


void func1(int i) {
  print('Iniciando Func1');
  //Timer.run(() => print('Fazando algo complexo func 1'));
  Future.delayed(Duration(seconds: 2), () => print('Fazando algo complexo func $i'));
  print('Finalizando Func1');
}

void func2() {
  print('Iniciando Func2');
  //Timer.run(() => print('Fazando algo complexo func 2'));
  Future.delayed(Duration(seconds: 1), () => print('Fazando algo complexo func 2'));
  print('Finalizando Func2');
}