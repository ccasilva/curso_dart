import 'package:dart_academia_flutter/2_dart_poo/15_equals_hashcode/pessoal.dart';

/*
    1 - p1.nome = Carlos
    2 - p2.nome = Carlos
*/

void main() {
  var p1 = Pessoa(nome: 'Carlos', email: 'carlos-csilva@hotmail.com');
  var p2 = Pessoa(nome: 'Carlos', email: 'carlos-csilva@hotmail.com');

  print(p1.hashCode);
  print(p2.hashCode);

  if (p1 == p2) {
    print('É igual');
  } else {
    print('Não é igual');
  }
}
