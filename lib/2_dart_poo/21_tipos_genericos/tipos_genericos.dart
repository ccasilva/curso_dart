void main() {
  final caixa = Caixa<Bola>();
  caixa.adicionar(Bola());
  Bola? itemCaixa = caixa.getItens();
  print(caixa.alturaItem());

  final caixaBoneca = Caixa<Boneca>();
  caixaBoneca.adicionar(Boneca());
  Boneca? itmBoneca = caixaBoneca.getItens();
  print(caixaBoneca.alturaItem());
}

class Caixa<I extends Item> {
  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItens() {
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

class Telegone extends Item {
  @override
  double altura() {
    return 80.0;
  }
}

class Computador {}
