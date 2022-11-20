import 'package:dart_academia_flutter/2_dart_poo/4_herenca/animal.dart';

class Cachorro extends Animal {
  Cachorro({required int idade}) : super(idade: idade);

  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
