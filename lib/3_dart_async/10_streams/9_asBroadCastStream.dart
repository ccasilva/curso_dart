/*
   Por padrao do DART eu só posso ter um ouvinte(LISTEN)
   Se voce precisa que mais de funcao escute voce precisa usar o asBroadcastStream
*/

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  //Esse STREAM pode ser de qualquer coisa ...
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream();

  //skip - desconsidera os 3 primeiros caras. Lembando que inicia do 0 por isso 3.
  stream = stream.take(5);
  stream.listen((numero) {
    print('Listen 1 value: $numero');
  });

  stream = stream.take(5);
  stream.listen((numero) {
    print('Listen 2 value: $numero');
  });

  print('Fim');
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value + 1) * 2;
}
