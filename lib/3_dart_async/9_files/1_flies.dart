import 'dart:io';

Future<void> main() async {
  var file = File('lib/3_dart_async/9_files/file.txt');

  //Leitura sincrona
  print('################## Leitura sincrona ###################');
  var fileData = file.readAsStringSync();
  print(fileData);

  //Leitura Assincrona
  print('################## Leitura Assincrona ###################');
  var fileData2 = await file.readAsString();
  print(fileData2);
  //Leitura linha sincrona
  //Leitura linha assincrona
}
