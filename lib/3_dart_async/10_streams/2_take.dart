/*
  Future vs Streams
  # Um FUTURE voçê recebera um unico resultado(Sucesso ou Erro)
  # Uma STREAM é uma combinação de FUTURES, dessa forma com STREAMS você
    poderá receber vários valores.

  Take(CORTE) - É um comando que podemos cortar a STREAM
*/

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  //Esse STREAM pode ser de qualquer coisa ...
  var stream = Stream<int>.periodic(interval, callback);

  //Ele vai receber apenas 5 "Requisicoes" - Demos um limite para essa requisicao.
  stream = stream.take(5);

  //await for
  await for (var i in stream) {
    print(i);
  }
  print('Fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
