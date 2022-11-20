//Deixando o processo mais simples, quase como "síncrono", mas as chamadas sao assíncrono.
Future<void> main() async {
  //Callback Hell sem utilizar o AWAIT
  // processo1().then((mensagem) {
  //   processo2()
  //       .then((mensagem) => print(mensagem))
  //       .catchError((error) => print(error));
  //   print('Mensagem é $mensagem');
  // }).catchError((error) {
  //   print(error);
  // });

  var mensagem = await processo1();
  print(mensagem);

  try {
    await processo2();
  } on Exception catch (err) {
    print('Erro na chamado do processo 2 $err');
  }
}

Future<String> processo1() {
  print('Inicio do P1');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P1');
}

Future<String> processo2() {
  print('Inicio do P2');
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}
