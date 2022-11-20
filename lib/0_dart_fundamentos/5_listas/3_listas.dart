void main() {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(1);
  print(numeros);

  final nomes = ['Carlos', 'Joao', 'Maria', 'Guilherme'];
  print(nomes);
  nomes.add('Simone');
  print(nomes);
  print(nomes[0]);
  int idx = 2;
  print(nomes[idx]);

  print('Adicionando Jose a lisya');
  nomes.insert(0, 'Jose');
  print(nomes);
  print(nomes[0]);

  //adiciona uma nova lista, na lista ja existente
  nomes.addAll(['Felipe', 'Roberto', 'Ze Carlos']);
  print(nomes);

  nomes.remove('Felipe');
  print(nomes);

  //Essa funcao tem que retorna true ou false
  nomes.removeWhere((nome) {
    print('Nome produrado $nome');
    if (nome == 'Guilherme') {
      print('Removendo o $nome');
      return true;
    } else {
      return false;
    }
  });
  print(nomes);

  //print(nomes[0]); //<- substituir isso
  print(nomes.first);

  //print(nomes[nomes.length - 1]);//<- substituir isso
  print(nomes.last);

  print('Buscando primeiro nome 1:');
  var primeiroNome = nomes.firstWhere((nome) => nome == 'Maria');
  print(primeiroNome);

  print('Buscando primeiro nome 2:');
  var primeiroNome2 = nomes.firstWhere((nome) {
    print('Listando $nome');
    if (nome == 'Joao') {
      return true;
    } else {
      return false;
    }
  });
  print(primeiroNome2);

  print('Gerando lista ...');
  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final stringsGerados = List.generate(10, (index) => 'Indice ${index + 1}');
  print(stringsGerados);

  final repeticoes = List.filled(10, 'Carlos');
  print(repeticoes);

  print('Somando o total da lista ...');
  final numerosGeradosParaCalculo = List.generate(4, (index) => index + 1);
  print(numerosGeradosParaCalculo);
  var soma = numerosGeradosParaCalculo.fold<int>(
    0,
    (previousValue, numero) => previousValue = previousValue + numero,
  );
  print('A some é $soma');

  print('Spread operator(...) - adiconando lista dentro de outra lista');
  var listaA = [1, 2, 3];
  print(listaA);

  var listaB = [4, 5, 7];
  listaA.addAll(listaB);
  print(listaA);

  var listaC = [-2, -1, 0, ...listaA];
  print(listaC);

  print(
      'Collection if - É um condicional que voce consegue fazer dentro da propria lista.');
  var promosaoAtiva = false;
  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promosaoAtiva) 'Suco de laranja'
  ];
  print(produtos);

  print('Collection For - Adicionando dados na lista com um FOR');
  var listaInts = [1, 2, 3];
  print(listaInts);
  var listaString = ['#1', '@2', for (var i in listaInts) '#valList_$i'];
  print(listaString);
}
