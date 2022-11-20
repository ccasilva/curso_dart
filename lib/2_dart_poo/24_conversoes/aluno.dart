import 'package:dart_academia_flutter/2_dart_poo/24_conversoes/curso.dart';

class Aluno {
  String nome;
  List<Curso> cursos;
  Aluno({
    required this.nome,
    required this.cursos,
  });

  @override
  String toString() => 'Aluno(nome: $nome, cursos: $cursos)';
}
