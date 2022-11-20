import 'package:dart_academia_flutter/4_banco_dados/database.dart';

Future<void> main() async {
  var database = Database();
  var conn = await database.abrirConexao();
  await Future.delayed(Duration(seconds: 1));
  //se tudo chegou ao final sem problema ele executa o commit
  //Quando ele estiver alterando esse registro ele loca o registro da alteracao
  await conn.transaction((_) async {
    await conn
        .query('update conta_corrente set saldo = ? where id = ?', [1000, 1]);

    await conn.query('insert into tira_dinheiro(id, data_saque) values(?,?)',
        [3, DateTime.now().toIso8601String()]);
  });

  var result = await conn.query('select * from conta_corrente');
  print('Meu saldo é: ${result.first['saldo']}');
}
