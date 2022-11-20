import 'package:dart_academia_flutter/2_dart_poo/19_extensions/pessoa_saudacao_extension.dart';
import 'package:dart_academia_flutter/2_dart_poo/19_extensions/saudacao_string_extension.dart';
import 'package:dart_academia_flutter/2_dart_poo/19_extensions/pessoa.dart';

void main() {
  var nome = 'Carlos Silva';
  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Carlos');
  print(p1.saudacao());
}
