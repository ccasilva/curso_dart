void main() {
  // ? = Nullable(Aceita nulo)
  // Sem nada (padrão) = non-null(Não aceita nulo)

  //Não aceita pode ser nulo
  var nomes = <String>[];

  //Aceita nulo
  List<String>? nomesNulos;

  //! Lista nao pode ser nulos nem os itens
  List<String> nomesInternosNaoAceitaNulos = ['Carlos'];
  var nomesInternosNaoAceitaNulos2 = ['Carlos'];

  // Lista nao pode ser nula mas os items internos podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['Carlos', null];
  var nomesInternosAceitaNulos3 = <String?>['Carlos', null];

  // Lista pode ser nula e os itens tambem podem ser nulos.
  List<String?>? nomesInternosAceitaNulos2 = null;
}
