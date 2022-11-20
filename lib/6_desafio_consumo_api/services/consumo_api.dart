import 'dart:convert';

import 'package:dart_academia_flutter/5_consumo_api/models/telefone.dart';

void main(List<String> arguments) {
  final cidadeJsonObjeto = '''{
				"id": 1,
				"nome": "Santo André"
			} ''';

  final cidadeJsonArray = '''[{
				"id": 1,
				"nome": "Santo André",
        "regiao":{
          "nome": "ABC Paulista"
        }
			},{
				"id": 2,
				"nome": "Sabino",
        "regiao":{
          "nome": "Lins"
        }
			}] ''';

  //Se decodificar e for um "Array" retorna um [] => List
  //Se decodificar e for um "Objeto" retorna um {} => Map<String,dynamic>.
  //A chave da propriedade sempre sera uma String.
  final cidadeMapObjeto = json.decode(cidadeJsonObjeto);
  final cidadeListArray = json.decode(cidadeJsonArray);

  if (cidadeMapObjeto is List) {
    print('É uma Lista');
  } else if (cidadeMapObjeto is Map) {
    print('É um Map');
  }

  print(cidadeMapObjeto.runtimeType);
  print(cidadeMapObjeto);
  print(cidadeMapObjeto['nome']);
  print('');

  if (cidadeListArray is List) {
    print('É uma Lista');
  } else if (cidadeListArray is Map) {
    print('É um Map');
  }

  print(cidadeListArray.runtimeType);
  print(cidadeListArray);
  print(cidadeListArray[0].runtimeType);
  cidadeListArray.forEach((city) => print(city['nome']));
  cidadeListArray.forEach((city) => print(city['regiao']['nome']));

  print('');
  final cidadeEncodeJson = {
    'id': 123,
    'nome': 'LINS',
    'uf': 'SP',
  };

  print(json.encode(cidadeEncodeJson));
  print(json.encode([cidadeEncodeJson]));
  print('');

  final telefoneJson = '''
{
  "ddd": 11,
  "telefone": "1223434343"
}
''';

  final telefone = Telefone.fromJson(telefoneJson);
  print(telefone.ddd);
  print(telefone.telefone);
  print(telefone.toJson());
  print(telefone.toMap());
}
