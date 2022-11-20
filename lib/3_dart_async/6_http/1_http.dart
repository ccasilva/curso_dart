import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  await buscarCep();
  await salvarPost();
  await buscarPost();
  await buscarCepErro();
}

Future<void> buscarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      responseData.forEach((element) => print(element));
      //ou
      for (var data in responseData) {
        print(data['id']);
      }
    }
  }
}

Future<void> buscarCep() async {
  var url = 'http://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    print(response.body.runtimeType);
    print(response.body);
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData.runtimeType);
      print(responseData['cep']);
    }
  }
}

Future<void> buscarCepErro() async {
  var url = 'http://viacep.com.br/ws/9999999/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    print(response.body.runtimeType);
    print(response.body);
    var responseData = convert.jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData.runtimeType);
      print(responseData['cep']);
    }
  } else {
    print('Ocorreu um erro => ${response.reasonPhrase}');
  }
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';

  var mapaRequest = {
    'title': 'Teste do Carlos',
    'body': 'Descricao do Carlos',
    'userId': 1
  };

  var response = await http.post(Uri.parse(url),
      body: convert.jsonEncode(mapaRequest),
      headers: {'Content-type': 'application/json; charset=UTF-8'});

  print(response.statusCode);
  print(response.body);
}
