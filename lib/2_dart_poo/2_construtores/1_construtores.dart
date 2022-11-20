import 'package:dart_academia_flutter/2_dart_poo/2_construtores/pessoa.dart';
import 'package:dart_academia_flutter/2_dart_poo/2_construtores/pessoaExemploErrado.dart';

void main() {
  //Você nao pode criar uma pessoa sem nome,idade e sexo.(Deve ser usado construtores)
  var pessoaInicializadaErrda = PessoaExemploErrado();

  //Forma correta de utilizar uma classe, sempre possuir e iniciar um construtor.
  var pessoa = Pessoa(pNome: 'Carlos', pIdade: 20, pSexo: 'M');
  var pessoaNomeado = Pessoa.semNome(pIdade: 30, pSexo: 'F');
  var pessoaFabrica = Pessoa.fabrica('Carlos Silva');
}
