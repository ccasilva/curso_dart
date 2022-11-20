import 'package:dart_academia_flutter/2_dart_poo/19_extensions/pessoa.dart';

extension PessoaSaudacaoExtension on Pessoa {
  String saudacao() {
    return 'Olá $nome bem vindo a academia do flutter';
  }
}
