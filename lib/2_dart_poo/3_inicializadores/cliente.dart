class Cliente {
  /*
  'late'referencia que sera inicializado depois, para uma valor que nao 
   podera ser mais alterado */
  late final String nome;
  String? idade;

  Cliente({required String nome});

  Cliente.comNome({required String nome}) {
    nome = nome;
  }
}
