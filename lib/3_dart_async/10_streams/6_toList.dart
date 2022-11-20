/*
   Inves de ficar resgatandos os valores um por. Ele tras todos de uma vez só.
*/

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  //Esse STREAM pode ser de qualquer coisa ...
  var stream = Stream<int>.periodic(interval, callback);

  //skip - desconsidera os 3 primeiros caras. Lembando que inicia do 0 por isso 3.
  stream = stream.take(5);
  final data = await stream.toList();
  print(data);

  print('Fim');
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value + 1) * 2;
}
