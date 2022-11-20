void main() {
  //trabalhando com variaveis estaticas.
  var cor = Cores.vermelho;
  var azul = 'azul';

  if (cor == Cores.vermelho) {
    print('A cor é vermelha');
  }

  print(Cores.azul.name);
  //Converte cores azul
  var corAzul215 = Cores.values.byName(azul);
  print(corAzul215);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAzulPeloMap = coresNameMap[azul];
  print(corAzulPeloMap);

  //Cores.values.byName('branco');
  var corBranco = coresNameMap['branco'];
  print(corBranco);

  // Quando voce utilizar o "switch", ele carrega automaticamente todas as opcoes.
  switch (cor) {
    case Cores.azul:
      break;
    case Cores.vermelho:
      break;
    case Cores.laranja:
      break;
    case Cores.verde:
      break;
    case Cores.preto:
      break;
  }
}

enum Cores {
  azul,
  vermelho,
  laranja,
  verde,
  preto,
}
