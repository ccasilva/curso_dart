import 'package:dart_academia_flutter/4_banco_dados/database.dart';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  final conexao = Database();
  var minhaConexaoMySql = await conexao.abrirConexao();
  print(minhaConexaoMySql.toString());
  await Future.delayed(Duration(seconds: 1));
  print('passou aqui');
  /*var resultado = await minhaConexaoMySql.query(
    'insert into aluno(id,nome) values(?,?)',
    [null, 'CARLOS 3'],
  );*/

  var resultadoSelect = await minhaConexaoMySql.query('select * from aluno');

  print('Resultado por Indice');
  resultadoSelect.forEach((row) {
    print(row[0]);
    print(row[1]);
  });

  print('Resultado pelo nome da coluna');
  resultadoSelect.forEach((row) {
    print(row['id']);
    print(row['nome']);
  });

  await minhaConexaoMySql
      .query('update aluno set nome = ? where id = ?', ['Ze Romario', 1]);

  var resultadoSelectUnico =
      await minhaConexaoMySql.query('select * from aluno where id = ?', [1]);

  print('Parametro unico');
  if (resultadoSelectUnico.isNotEmpty) {
    var rowUnico = resultadoSelectUnico.first;
    print(rowUnico['id']);
    print(rowUnico['nome']);
  }

  try {
    await minhaConexaoMySql
        .query('update aluno set nome = ? where id = ?', [1, 'Ze Romario']);
  } on MySqlException catch (e) {
    print(e);
    print('Erro ao atualizar dados do aluno');
  }
}
