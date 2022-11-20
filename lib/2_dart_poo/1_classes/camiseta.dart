/*

  Classe é uma representacao do mundo real.
  Classe no geral ela tem duas estruturas especificas

  * Atributos(Caracteristicas)
  * Comportamentos

*/

class Camiseta {
  //Atributos - * Atributos de instancia, voce precisa de uma classe criada(New variavel).
  String? tamanho;
  String? _cor;
  String? marca;

  //Atributos de classe - static = sao atributos que nao muda
  //static const - Impete que altere a variavel
  static const String nome = 'Camiseta';

  //Metodo de classe - Só acessa objetos "Staticos"
  static String recuperarNome() => nome;

  /* ** Comportamentos
    Esses funcoes dentro de classes
    sao chamados de métodos.
  */
  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }

  String? get cor => _cor;

  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser Verde!');
    }
  }
}

//Metodo privados, no mesmo arquivo. É possivel acessa-los.
class _Camiseta2 {
  void recuperarCor() {
    var camiseta = Camiseta();
    camiseta._cor = 'Verde';
  }
}
