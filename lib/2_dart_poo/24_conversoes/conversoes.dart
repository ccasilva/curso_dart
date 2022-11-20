import 'package:dart_academia_flutter/2_dart_poo/24_conversoes/aluno.dart';
import 'package:dart_academia_flutter/2_dart_poo/24_conversoes/curso.dart';

void main() {
  var frutas = [
    Fruta('Banana'),
    Fruta('Abacaxi'),
    Fruta('Laranja'),
  ];

  var frutasMap = [
    {'nome': 'Banana'},
    {'nome': 'Abacaxi'},
    {'nome': 'Laranja'},
  ];

  List<Suco> sucos = [];
  for (var fruta in frutas) {
    final suco = Suco(sabor: fruta.nome);
    sucos.add(suco);
  }
  print(sucos);

  //Transforma um objeto X em um objeto Y
  //É feito a conversao no final, pq o map retorna um iterable e nao lista
  var sucos2 = frutas.map((fruta) {
    return Suco(sabor: fruta.nome);
  }).toList();
  print(sucos2);

  var sucos3 = frutasMap.map((frutaMap) {
    return Suco(sabor: frutaMap['nome'] ?? 'Sem sabor');
  });
  print(sucos3);

  /*
    Dentro da programacao, nos sempre devemos trabalhar com entidades.
    Nos temos que ter a relacao objeto dado em nosso sistema.
    Eu nao vou transforma esse mapa em outro mapa
    Eu nao devo trabalhar com mapas dentro da minha classe/projeto
    Tenho que trabalhar com objetos. Se eu tenho uma mapa aluno, eu tenho
    que transformar esse mapa e um objeto aluno. Mapa só pode ser utilizado 
    para trafegar informacoes. 
  */
  var alunoAdf = <String, Object>{
    'nome': 'Carlos Silva',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de flutter do Brasil!!!',
      },
      {
        'nome': 'Imersao GetX',
        'descricao': 'Imersao GetX',
      },
      {
        'nome': 'Imersao Código Limpos',
        'descricao': 'Imersao Código Limpos',
      },
    ]
  };

  final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;
  final cursos = cursosMap.map((curso) {
    var nome = curso['nome'] as String;
    var descricao = curso['descricao'] as String;
    return Curso(nome: nome, descricao: descricao);
  }).toList();

  final nomeAluno = alunoAdf['nome'] as String;
  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);
}

class Suco {
  String sabor;
  Suco({required this.sabor});

  @override
  String toString() {
    return 'Suco sabor $sabor';
  }
}

class Fruta {
  String nome;
  Fruta(this.nome);
}
