/*
  Future vs Streams
  # Um FUTURE voçê recebera um unico resultado(Sucesso ou Erro)
  # Uma STREAM é uma combinação de FUTURES, dessa forma com STREAMS você
    poderá receber vários valores.
*/

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  final stream = Stream<int>.periodic(interval, callback);
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
