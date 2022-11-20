import 'package:dart_academia_flutter/2_dart_poo/4_herenca/cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10);
  cachorro.tamanho = 'Pequeno';
  print(cachorro.calcularIdadeHumana());
  print(cachorro.recuperarIdade());
  print('''
  Cachorro:
     Tamanho: ${cachorro.tamanho}
     Idade: ${cachorro.idade}
     Idade Humana: ${cachorro.calcularIdadeHumana()}
  ''');
}
