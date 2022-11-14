void main() {

  List<int> numeros = [1,2,3];
  numeros.add(2);

  Map<String, int> mapa = {};

  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  Bola? itemCaixa = caixa.getItem();
  print(caixa.alturaItem());

  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.adicionar(Boneca());
  Boneca? itemBoneca = caixaBoneca.getItem();
  print(caixaBoneca.alturaItem());
}

class Caixa<I extends Item> {

  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double alturaItem() {
     return _item?.altura() ?? 0; 
  }
}

abstract class Item {
  double altura();
}

class Bola extends Item {
  @override
  double altura() {
    return 20.0;
  }
}
class Boneca extends Item {
  @override
  double altura() {
    return 60.0;
  }
}
class Telefone extends Item{
  @override
  double altura() {
    return 80.0;
  }
}