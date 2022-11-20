import 'dart:convert';

void main() {
  String json = '''
    {
      "usuario":"carlos-roberto@hotmail.com",
      "senha":123456,
      "permissoes":[
        "owner", "admin"
      ]
    }
''';

  print(json);
  //var resultJson = jsonDecode(json);
  Map resultJson = jsonDecode(json);
  print(resultJson);
  print(resultJson.runtimeType);
  print(resultJson["usuario"]);
  print(resultJson["permissoes"][0]);

  Map mapa = {
    'nome': 'Carlos',
    'passa': 123,
    'permissions': ['owner', 'admin']
  };

  var result = jsonEncode(mapa);
  print(result);
}
