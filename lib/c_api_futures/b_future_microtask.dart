void main() {
  print('Init Main');
  
  Future<String>(() => 'Função Normal').then(print);
  Future<String>.microtask(() => 'Função MicroTesk').then(print);


  print('Fim Main');

}