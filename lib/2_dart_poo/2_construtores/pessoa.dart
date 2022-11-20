class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // construtor default todas as classes tem
  // automaticamente
  // Pessoa()

  /* <<<contrutores default>>> */
  Pessoa({
    required String pNome,
    required int pIdade,
    required String pSexo,
  }) {
    nome = pNome;
    idade = pIdade;
    sexo = pSexo;
  }

  /* 
     No DART nao existe sobre carga de metodos para construtores, 
     voce deve utilizar construtor nomeado.
     sobre carga: É um construtor com o mesmo nome, mas com parametros diferentes.
  */

  /* <<<contrutores nomeados>>> */
  Pessoa.semNome({
    required int pIdade,
    required String pSexo,
  }) {
    idade = pIdade;
    sexo = pSexo;
  }

  Pessoa.vazia();

  /* <<<contrutores do tipo fabrica>>> */

  /* factory = fabricar. 
     Nesse caso ele vai fabricar uma instancia de pesssoa apos a execucao da regra de negocio.
     É utilizado quando temos uma regra de negocio para criacao da nossa classe.
  */
  factory Pessoa.fabrica(String pNome) {
    var nome = pNome + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return Pessoa.vazia();
  }
}
