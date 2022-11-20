import 'package:dart_academia_flutter/2_dart_poo/5_heranca_covariant/banana.dart';
import 'package:dart_academia_flutter/2_dart_poo/5_heranca_covariant/mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}
