void main() {
  final nomes = ['Rodrigo', 'Guilherme', 'Renato', 'Sandra'];
  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();

  final pessoas = nomes.map<Pessoa>(Pessoa.fromJson).toList();
  //final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  //final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();

  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer(Pessoa.new);
}

void funcaoQualquer(void Function(String) funcao) {
  funcao('Rodrigo');
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome) {
    return Pessoa(nome);
  }
}
