import 'dart:io';

import 'package:dart_academia_flutter/2_dart_poo/22_metadas/fazer.dart';

@Fazer(
  quem: 'Carlos Silva na class',
  oque: 'Tentando ler a anotacao da classe',
)
@gzip
class Pessoa {
  @Fazer(
    quem: 'Carlos Silva no atributo',
    oque: 'Tentando ler a anotacao do atributo',
  )
  String? nome;

  @Fazer(
    quem: 'Carlos Silva no metodo',
    oque: 'Tentando ler a anotacao do metodo',
  )
  void fazerAlgo() {}
}
