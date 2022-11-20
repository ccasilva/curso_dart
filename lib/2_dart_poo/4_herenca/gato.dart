import 'package:dart_academia_flutter/2_dart_poo/4_herenca/animal.dart';

class Gato extends Animal {
  Gato({required int idade}) : super(idade: idade);

  @override
  int calcularIdadeHumana() {
    return idade * 15;
  }
}
