/*
* Polimorfismo - Substituir o comportamento de uma classe, alterar a caracterisca dela.
*/
import 'package:dart_academia_flutter/2_dart_poo/7_polimorfismo/anestesista.dart';
import 'package:dart_academia_flutter/2_dart_poo/7_polimorfismo/obstetra.dart';
import 'package:dart_academia_flutter/2_dart_poo/7_polimorfismo/pediatra.dart';
import 'package:dart_academia_flutter/2_dart_poo/7_polimorfismo/residente_anestesia.dart';

import 'medico.dart';

void main() {
  var medicos = <Medico>[
    ResidenteAnestesia(), //Sobre-escreve a classe anestesista e agrega a acao do anestesista.
    //Anestesista(),
    Obstetra(),
    Pediatra(),
  ];

  /*
  * Isso é polimorfismo, eu deixei um comportamento generico que todo medico precisa ter
  * e ai eu nao me preocupo com mais nada. Na operacao cada classe faz o seu, em sua 
  * nescessidade.
  */
  for (var medico in medicos) {
    medico.operar();
  }
}
