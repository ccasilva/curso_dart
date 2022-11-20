import 'package:dart_academia_flutter/5_consumo_api/models/aluno.dart';
import 'package:dart_academia_flutter/5_consumo_api/models/cidade.dart';
import 'package:dart_academia_flutter/5_consumo_api/models/curso.dart';
import 'package:dart_academia_flutter/5_consumo_api/models/endereco.dart';
import 'package:dart_academia_flutter/5_consumo_api/models/telefone.dart';
import 'package:dart_academia_flutter/5_consumo_api/repositories/alunos_repository.dart';

class AlunosController {
  final _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();
    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunosRepository.findById(id);
    print(aluno);
  }

  Future<void> update() async {
    final aluno = await _alunosRepository.findById('1');
    aluno.nomeCursos.add('Imersão Python');

    await _alunosRepository.update(aluno);

    final alunoAlterado = await _alunosRepository.findById('1');
    print(alunoAlterado.nome);
    print('Tem os cursos:');
    print(alunoAlterado.nomeCursos);
  }

  Future<void> insert() async {
    final aluno = Aluno(
      nome: 'Marcela Lazaro',
      nomeCursos: ['Enfermagem do trabalho'],
      endereco: Endereco(
        rua: 'Rua x',
        numero: 200,
        cep: '09411136',
        cidade: Cidade(id: 1, nome: 'Getulina'),
        telefone: Telefone(
          ddd: 11,
          telefone: '123421',
        ),
      ),
      cursos: [Curso(id: 1, nome: 'Academia de Enfermagem', isAluno: true)],
    );

    _alunosRepository.insert(aluno);
  }
}
