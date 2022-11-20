void main() {
  print('Inicio do P1');
  processo2();

  //O Future automaticamente tem 2 status (Incompleto, Concluido( Com valor, com erro))

  // Concluido com valor -> Then
  // Concluido com erro  -> CatchErro ou OnError
  // whenComplete sempre sera executado.
  processo3().then((mensagem) {
    print(mensagem);
  });

  processo4().then((mensagem) {
    print('Mensagem do p4 $mensagem');
  }).catchError((erro) {
    print('Erro ao executar o processo4');
  }).whenComplete(() {
    print('Finalizou com sucesso!!');
  });

  processo4()
      .then((mensagem) => print('Mensagem 2 do p4 $mensagem'))
      .catchError((erro) => print('Erro 2 ao executar o processo4'))
      .whenComplete(() => print('Finalizou com erro'));

  processo4().then((mensagem) => print('Mensagem 2 do p4 $mensagem'),
      onError: (error) {
    print('Tratando o erro pelo OnErro do THEN');
  });

  processo3().then((mensagem) {
    try {
      throw Exception();
    } catch (erro) {
      print('O Future nao vai cair nesse erro, esse erro é do negocio');
    }
  });

  print('Fim do P1');
}

//Quando o retorno é um FUTURE voce nao precisa informar "async"
Future<String> processo3() {
  print('Inicio do P3');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P3');
}

//Retornando erro
Future<String> processo4() {
  print('Inicio do P4');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}

// Quando o metodo é VOID voce deve informar "async"
Future<void> processo2() async {
  print('Inicio do P2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('Fim do P2');
  });
}
