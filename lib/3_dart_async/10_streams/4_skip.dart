/*
  
*/

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  //Esse STREAM pode ser de qualquer coisa ...
  var stream = Stream<int>.periodic(interval, callback);

  //skip - desconsidera os 3 primeiros caras. Lembando que inicia do 0 por isso 3.
  stream = stream.take(5).skip(2);

  //await for
  await for (var i in stream) {
    print('O numero que chegou no AWAIT for $i');
  }
  print('Fim');
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value + 1) * 2;
}
