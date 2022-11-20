import 'package:dart_academia_flutter/3_dart_async/8_repositories/repositories/cidade_repository.dart';
import 'package:dart_academia_flutter/3_dart_async/8_repositories/repositories/user_repository.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();
  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);
    var user = await userRepository.findAllUsers();
    print(user?.name ?? 'Usuário não encontrado!');
  } catch (e) {
    print('Erro ao buscar cidade');
  }
}
