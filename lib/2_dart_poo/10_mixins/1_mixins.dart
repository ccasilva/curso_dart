/*
* Mixin é uma estruta que foi criada dentro do DART para resolver um forma de trabalho.
* Ele é forma de fazer herancas multiplas.
* 
* Heranca simples(unica): O cachorro extens Animal
* Henreca Multipla: O cachorro extens Animal, e mais uma coisa
*/

import 'package:dart_academia_flutter/2_dart_poo/10_mixins/joao.dart';

void main() {
  var joao = Joao();

  /*
  * Joao é um Artista
  * Joao é um Cantar
  * Joao é um Dancar
  */
  print(joao.habilitade());
  print(joao.cantar());
  print(joao.dancar());
}
