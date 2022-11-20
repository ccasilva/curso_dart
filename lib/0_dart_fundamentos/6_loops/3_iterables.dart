void main() {
  /* 
  
     PQ voce precisar jogar um iterable para lista de novo?
     O iterable muitas vezes nao tem alguns metodos que voce precisar para
     fazer acesso aos elementos, entao voce pode pode ter algum pouquinho de 
     dificuldade. 

     iterable = ( conteudo )
     Lista = [ conteudo ]

  */

  var numeros = List.generate(10, (index) => index);
  print('Exemplo 1 "${numeros}"');

  final numeroDiferente5 = numeros.where((numero) => numero != 5);
  print('Exemplo 2 "${numeroDiferente5}"');

  /* ATENÇÃO - Voce nao deve utilizar o "forEach" de forma "assíncrona" */
  numeros
      .where((numero) => numero != 5)
      .forEach((numero) => print('Exemplo 3 "${numero}"'));

  final numerosAte5 = numeros.takeWhile((numero) => numero < 6);
  print('Exemplo 4 "${numerosAte5}"');

  final numerosAte6DiferentDe5 =
      numeros.takeWhile((numero) => numero < 7).where((numero) => numero != 5);
  print('Exemplo 5 "${numerosAte6DiferentDe5}"');

  final numerosAte6Dif5emLista = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();

  print('Exemplo 6 "${numeros[1]}"');
  print('Exemplo 7 "${numerosAte6Dif5emLista}"');
  print('Exemplo 8 "${numerosAte6Dif5emLista.elementAt(1)}"');

  var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];
  var nomesSkip = nomes.skipWhile((nome) {
    if (nome != 'Arthur') {
      return true;
    } else {
      return false;
    }
  }).toList();

  print('Exemplo 9 "${nomesSkip}"');

  /* map - Ele é responsavel por "mapear", entao ele vai transformar.
     Ele vai pegar uma lista e vai transformar em uma outra lista  */
  var numeroStrList = numeros.map((numero) {
    return 'Numero é ${numero}';
  }).toList();

  print('Exemplo 10 "${numeroStrList}"');

  var numeroList = numeros.map((numero) {
    return numero + 10;
  }).toList();

  print('Exemplo 11 "${numeroList}"');

  final numeroRevertidos = nomes.reversed.toList();
  print('Exemplo 12 "${nomes}"');
  print('Exemplo 12 "${numeroRevertidos}"');
}
