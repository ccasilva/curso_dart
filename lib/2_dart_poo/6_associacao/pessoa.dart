/* A "associacao" é uma estrututa, que define se alguma coisa tem aquela outra coisa.
* Ex:
* Uma pessoa tem um endereco, Uma pessoa tem um telefone
* Quando você tem essa dependencia por meio de associacao, você está falando que alguma coisa
* tem alguma coisa.
* A pessoa tem um endereco, ela nao é um endereco.
*/
class Pessoa {
  String? nome;
  // "Composicao" - Um pessoa não pode existir no sistema sem um endereco
  // Quando um atributo de associacao é obrigatorio
  // Nos estamos falando de composicao!!!
  Endereco endereco = Endereco();
  CPF cpf = CPF();

  // Agregacao - Uma pessoa pode existir no sistema sem um telefone
  // Quando um atributo de associação nao é obrigatorio
  // Nós estamos falando de agregacao.
  Telefone? telefone;
}

class Endereco {}

class CPF {}

class Telefone {}
