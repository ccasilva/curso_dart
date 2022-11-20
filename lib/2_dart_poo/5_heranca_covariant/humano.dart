import 'package:dart_academia_flutter/2_dart_poo/5_heranca_covariant/fruta.dart';

import 'mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(Fruta fruta) {}
}
