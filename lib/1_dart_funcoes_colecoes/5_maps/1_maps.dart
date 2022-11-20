void main() {
  final pacienteSet = <int?>{};

  // Map é uma representacao de chave e valor.
  final pacienteMap = <String, String>{
    'nome': 'Carlos Silva',
    'curso': 'Academia do Flutter'
  };

  /* O mapa pode ser nulo mas se for criado deve conter a chave e o valor nao nulos */
  Map<String, String>? pacienteNullSafety = null;

  /* O map e o valor nao podem ser nulos mas a chave pode ser nula */
  Map<String?, String> pacienteNullSafety2 = {
    null: 'Rodrigo',
  };

  /* O mapa e a chave nao podem ser nulos mas o valor pode ser nulo*/
  Map<String, String?> pacienteNullSafety3 = {
    'nome': null,
  };

  /* O map e o valor nao podem ser nulos mas a chave pode ser nula */
  var pacienteNullSafety4 = <String?, String>{
    null: 'Rodrigo',
  };

  /* O mapa e a chave nao podem ser nulos mas o valor pode ser nulo*/
  var pacienteNullSafety5 = <String, String?>{
    'nome': null,
  };

  var produtos = <String, String>{};
  // putIfAbsent - Só sera adicionado se a chave nao existir
  produtos.putIfAbsent('nome', () => 'Cerveja');
  produtos.putIfAbsent('nome', () => 'Refrigerante');
  print(produtos);

  // Altera o valor da chave
  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);

  /* Alterando o valor da chave, e caso a chave nao exista. 
  E se a chave nao existir, cria a chave e o valor */
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');
  print(produtos);

  //Recuperando o valor
  print('Produto: ${produtos['nome']}');
  print('Preço: ${produtos['preco']}');

  print('Map - forEach');
  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  print('Map - ForIn');
  /** Utilizar esse laco de repeticao caso queira trabalhar com
   *  algum processo asyncrono dentro dele.
   */
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  for (var value in produtos.values) {
    print('Valor: $value');
  }

  print('Transformando meu mapa em outro mapa');
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_novo', value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Carlos Silva',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de flutter do Brasil!!!',
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Melhor curso de arquitetura do Brasil!!!',
      }
    ]
  };

  print(mapa);
}
