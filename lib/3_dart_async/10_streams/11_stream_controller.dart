import 'dart:async';

Future<void> main() async {
  print('Inicio Stream Controller');
  //Stream controller do processo
  final streamController = StreamController<Pessoa>.broadcast();
  //Portas de entrada e saida
  final entradaStream = streamController.sink;
  final saidaStream = streamController.stream;

  saidaStream.listen(
    (pessoa) {
      print('Seja bem vindo ${pessoa.nome}');
    },
  );

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando número $numero');
    entradaStream.add(Pessoa(nome: 'Carlos Silva $numero'));
    //await Future.delayed(Duration(milliseconds: 500));
  }
  print('Fim Stream Controller');
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({required this.nome});
}
