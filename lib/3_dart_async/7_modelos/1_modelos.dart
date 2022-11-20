import 'package:dart_academia_flutter/3_dart_async/7_modelos/cidade.dart';
import 'package:dart_academia_flutter/3_dart_async/7_modelos/user.dart';
import 'package:http/http.dart' as http;

void main() {
  buscarCep();
  buscarUser();
}

Future<void> buscarCep() async {
  var url = 'http://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var cidade = Cidade.fromJson(response.body);
    print(cidade);
    print(cidade.toMap());
    print(cidade.toJson());
  }
}

Future<void> buscarUser() async {
  var url = 'https://run.mocky.io/v3/b6b2e4ca-f66d-45f1-aac7-1aeb3f942f2c';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var user = User.fromJson(response.body);
    print('###############################################');
    print(user);
    print(user.toMap());
    print(user.toJson());
  }
}
