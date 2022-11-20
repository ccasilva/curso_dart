import 'package:dart_academia_flutter/2_dart_poo/16_ordenacao_default/cliente.dart';

void main() {
  var c1 = Cliente(nome: 'Carlos', telefone: '123455');
  var c2 = Cliente(nome: 'Claudemir', telefone: '324567');
  var c3 = Cliente(nome: 'Ailton', telefone: '4343567');
  var c4 = Cliente(nome: 'Ademir', telefone: '1232436455');

  var lista = [c1, c2, c3, c4];
  print(lista);
  lista.sort();
  //lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  print(lista);
}
