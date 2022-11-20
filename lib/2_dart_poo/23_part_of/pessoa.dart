import 'package:dart_academia_flutter/2_dart_poo/23_part_of/telefone.dart';

//Como o part eu junto mais de uma classe dentro do mesmo arquivo, sem elas estarem
//dentro do mesmo arquivo
part 'endereco.dart';
part 'cpf.dart';

class Pessoa {
  String? nome;
  //composicao
  //Quando um atributo de associacao é obrigatorio
  //Nos estamos falando de composicao!!!
  _Endereco endereco = _Endereco();
  CPF cpf = CPF();

  //Agregacao
  //Quando um atributo de associacao nao é obrigatorio
  //Nos estamos falando de agragacao!!!
  Telefone? telefone;
}
