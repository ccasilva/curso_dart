void main() {
  var lista = ['Carlos'];
  var nome = 'Carlos';
  // Um código hash é um único inteiro que representa o estado do
  // objeto que afeta as comparações do operador ==
  print('Identificador de memoria - ${lista.hashCode}');
  print('Identificador do nome - ${nome.hashCode}');
  print('Antes => $lista');
  funcao(lista, nome);
  print('Depois => $lista');
  //Nao altera a memoria da variavel nome
  print('Identificador do nome - ${nome.hashCode}');
  print('');

  print('Forma correta de se trabalhar com lista multavel.');
  var lista2 = ['Carlos'];
  print('Lista principal Antes - $lista2');
  print(funcaoString(lista2));
  print('Lista principal Depois - $lista2');
}

void funcao(List<String> nomes, String nome) {
  print('Identificador de memoria da funcao - ${nomes.hashCode}');
  print('Identificador de memoria da funcao parametro nome - ${nome.hashCode}');
  // Essa funcao nao é imutavel, ele sofre alteracao direto da memoria
  nomes.add('Silva');
  nome += 'Silva';
  //+= retorna uma string e nao um "void" entao essa funcao é multavel.
  print('Identificador de memoria de funcao parametro nome - ${nome.hashCode}');
}

List<String> funcaoString(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Roberto');
  return novoNomes;
}
