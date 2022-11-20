/*
*  Interface nada mais é do que um contrato, é uma forma vai definir uma forma
* de criar um objeto nosso, alguma classe nossa. É p basico que minha classe precisa ter
* para ser alguma coisa.
*/
import 'package:dart_academia_flutter/2_dart_poo/8_interfaces/gol.dart';
import 'package:dart_academia_flutter/2_dart_poo/8_interfaces/uno.dart';

import 'carro.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  //print(uno.velocidadeMaxima());
  //print(gol.velocidadeMaxima());

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
}

void printarDadosDoCarro(Carro carro) {
  print('''
       Carro:
          Tipo da classe: ${carro.runtimeType}
          Portas: ${carro.portas}
          Rodas: ${carro.rodas}
          Motor: ${carro.motor}
          Velocidade Maxima: ${carro.velocidadeMaxima()}
  ''');
}
