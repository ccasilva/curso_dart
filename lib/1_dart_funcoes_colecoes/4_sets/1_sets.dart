void main() {
  //Por baixo dos panos o dart entende que voce quer criar um LIST()
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);

  print(numerosLista);

  //Por baixo dos panos o dart entende que sera representado pela classe "Set()"
  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);

  //Ele nao permite apresentar valorers "Duplicados"
  print(numerosSet);
  print('Transforma sua LISTA em SET = ${numerosLista.toSet()}');
  numerosSet.forEach(print);

  var numero1 = {1, 2, 3, 4, 5, 6};
  var numero2 = {1, 3, 4, 7};
  print(
      'Quais do numero 1 nao tem no numero 2 = ${numero1.difference(numero2)}');

  print(
      'Quais do numero 2 nao tem no numero 1 = ${numero2.difference(numero1)}');

  print('Unir o numero 1 e o numero 2 = ${numero1.union(numero2)}');

  print(
      'Quais são os numeros que estão nas duas listas = ${numero1.intersection(numero2)}');

  print(
      'Tras o parametro informado se existir na lista = ${numero1.lookup(3)}');
  print(
      'Tras o parametro informado se existir na lista = ${numero1.lookup(99)}');
}
