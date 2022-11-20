/*
   WHERE - Filtra os dados que estao entrando
   SKIPWHILE - descartar os dados que estao entrando
*/

Future<void> main() async {
  print('Inicio');
  final interval = Duration(seconds: 1);
  //Esse STREAM pode ser de qualquer coisa ...
  var stream = Stream<int>.periodic(interval, callback);

  /*funciona para filtrar os dados que estao entrando. o retorno deve ser TRUE*/
  stream = stream.skipWhile((numero) => numero % 6 == 0).take(3);

  /* skip - desconsidera os 3 primeiros caras. Lembando que inicia do 0 por isso 3.
  retorno deve ser FALSE */
  //stream = stream.skipWhile((numero) => numero % 6 != 0).take(3);

  stream.listen((numero) {
    print('Listem valur: $numero');
  });

  print('Fim');
}

int callback(int value) {
  print('Callback valor que chegou é $value');
  return (value + 1) * 2;
}
