import 'dart:async';

Future<void> main() async {
  print('Inicio Stream Controller');
  //Stream controller do processo
  final streamController = StreamController<int>.broadcast();
  //Portas de entrada e saida
  final entradaStream = streamController.sink;
  final saidaStream = streamController.stream;

  saidaStream
      .skip(1)
      .where((numero) => numero % 2 == 0)
      .map((numero) => 'O valor par enviado é $numero')
      .listen(
    (strConvertida) {
      print('##=> String recebida');
      print('##=> ${strConvertida}');
    },
  );

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando número $numero');
    entradaStream.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }
  print('Fim Stream Controller');
  await streamController.close();
}
