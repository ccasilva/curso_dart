Future<void> main() async {
  var nomes = ['Rodrigo', 'Luana', 'Guilherme'];

  print('Inicio');

  await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  });

  print('#########################################');

  //Processo mais utilizado no dia a dia.
  for (var nome in nomes) {
    print(await saudacao(nome));
  }

  print('#########################################');
  //Executando processos em paralelo
  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();

  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);

  print('Fim');
}

Future<String> saudacao(String nome) {
  print('Inicio $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim $nome');
    return 'Olá $nome';
  });
}
