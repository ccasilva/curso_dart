/*
* Qual a diferenca de uma classe abstrata para uma classe interface?
*
* R: Um classe abastrata, ela tem dentro dela metodos implementados.
*
*    void velocidadeMaxima(){}  -> Implementado
*    void velocidadeMaxima()    -> Não Implementado
*/
abstract class Carro {
  // Para atributos dentro de interface utilizar o abstract para nullsafety,
  // E assim manter como obrigatorio.
  abstract int portas;
  abstract int rodas;
  abstract String motor;
  int velocidadeMaxima();
}
