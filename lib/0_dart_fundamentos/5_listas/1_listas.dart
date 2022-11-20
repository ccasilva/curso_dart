void main() {
  //<>(Generics - Referencia dentro da classe que tipo é ela)

  // Declaração normal
  List<int> listaNumero = [1, 2, 3];

  // Voçê não precisa com o tipo de lista, se voçê já vai tipar ela.
  var listaNumero2 = [1, 2, 3];

  //Se voce declarar uma variavel sem tipo, ele vai entender que o tipo dela é dynamic
  var listSemDadosObje = [];

  // Me cria uma lista vazia de inteiros.
  var listaSemDadosInt = <int>[];
}
