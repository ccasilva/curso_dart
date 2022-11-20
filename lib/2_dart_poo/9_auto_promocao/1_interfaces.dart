/*
*  Interface nada mais é do que um contrato, é uma forma vai definir uma forma
* de criar um objeto nosso, alguma classe nossa. É p basico que minha classe precisa ter
* para ser alguma coisa.
*/

import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

Carro golCarroNiveSuperior = Gol();

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  /*
  * Quando checamos se a variavel é(is) de um tipo
  * caso ela seja o dart vai automaticamente converter
  * essa instacoa para a classe do tipo!!!
  *
  * Obs: Variaveis de nivel superior e atributos de classe nao sao 
  * auto promovidas para o tipo cecgado!
  */
  if (golCarro is Gol) {
    print(golCarro.tipoDeRodas());
    print('');
    print((golCarroNiveSuperior as Gol).tipoDeRodas());
    print('');
    print('');
  }

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
          Tipo de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível'}
  ''');
}
