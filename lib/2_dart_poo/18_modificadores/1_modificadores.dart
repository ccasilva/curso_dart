import 'package:dart_academia_flutter/2_dart_poo/18_modificadores/pessoa.dart';
import 'package:dart_academia_flutter/2_dart_poo/18_modificadores/pessoa_const.dart';

void main() {
  /*
    1 - p1 = Pessoa(..)
    2 - p2 = Pessoa(..)
  */
  var p1 = Pessoa(nome: 'Carlos', idade: 33);
  var p2 = Pessoa(nome: 'Carlos', idade: 33);
  print(p1 == p2);

  /*
    1 - c1 = Pessoa(..)
    1 - c2 = Pessoa(..) *** Se os dados sao os mesmo, ele utiliza o mesmo ponto da memoria
  */
  var c1 = const PessoaConst(nome: 'Carlos', idade: 33);
  var c2 = const PessoaConst(nome: 'Carlos', idade: 33);
  print(c1 == c2);
}
