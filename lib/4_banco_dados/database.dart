import 'package:mysql1/mysql1.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class Database {
  Future<MySqlConnection> abrirConexao() {
    final definicoes = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: 'ccasilva',
      db: 'dart_mysql',
    );
    return MySqlConnection.connect(definicoes);
  }
}
