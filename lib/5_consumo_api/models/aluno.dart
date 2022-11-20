/*
  -- É um metodo que pega o objeto e  transforma em um Map<String,Dynamic>
  toMap();
  
  -- É um CONSTRUTOR ele vai pegar um MAP e transformar em um objeto telefone
  fromMap();

  -- É um metodo que retorna uma string json do meu objeto Telefone
  toJson();

  -- É um metodo que baseado em uma string json retorna um objeto telefone
  fromJson();
*/

import 'dart:convert';

import 'package:dart_academia_flutter/5_consumo_api/models/curso.dart';
import 'package:dart_academia_flutter/5_consumo_api/models/endereco.dart';

class Aluno {
  String? id;
  String nome;
  int? idade; //Opcional
  List<String> nomeCursos;
  Endereco endereco;
  List<Curso> cursos;
  Aluno({
    this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.endereco,
    required this.cursos,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idade': idade,
      'nomeCursos': nomeCursos,
      'endereco': endereco.toMap(),
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      idade: map['idade'],
      //nomeCursos: List<String>.from(map['nomeCursos']),
      nomeCursos: map['nomeCursos'].cast<String>(),
      endereco: Endereco.fromMap(map['endereco']),
      cursos: map['cursos']
          .map<Curso>((cursoMap) => Curso.fromMap(cursoMap))
          .toList(),
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome, idade: $idade, nomeCursos: $nomeCursos, endereco: $endereco, cursos: $cursos)';
  }
}
