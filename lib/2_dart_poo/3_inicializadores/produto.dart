class Produto {
  final int? _id;
  final String? nome;
  final double? _preco;

  /* 
     tudo que esta dentro do construtor {} o dart já construiu a classe. E o FINAL
     só aceita um atribuicao por execucao, via parametro ele já esta recebendo o valor NULL
  Produto({required int? id, required this.nome, required double preco}){
    _id = id;
    _preco = preco;
  }*/

  /* resumindo: se um construtor entrar na classe dele {} ele já inicializa ela
     Entao antes, utilizo o ":" ainda na inicializacao e depois comeco o metodo {}
  */
  Produto({required int? id, required this.nome, required double preco})
      : _id = id,
        _preco = preco {
    print(_id);
    print(_preco);
  }

  factory Produto.fabrica(
      {required int? id, required String nome, required double preco}) {
    return Produto(id: id, nome: nome, preco: preco);
  }
}
