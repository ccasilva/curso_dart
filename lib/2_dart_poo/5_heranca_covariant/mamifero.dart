import 'package:dart_academia_flutter/2_dart_poo/5_heranca_covariant/fruta.dart';

abstract class Mamifero {
  //Covariant = Deixa o cara colocar o que ele quiser, desde que seja filho de fruta.
  void comer(covariant Fruta fruta);
}
