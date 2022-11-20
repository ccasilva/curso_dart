void main() {
  var idade = '38 anos';

  try {
    int.parse(idade);

    if (idade == 38) {
      throw Exception();
    }
  } on FormatException catch (erro, stackTrace) {
    print('Erro ao converter idade: $erro');
    print('Trase: $stackTrace');
  } on TypeError {
    print('Erro no tipo.');
  } catch (erro) {
    print('Erro ao executar programa: $erro');
  } finally {
    print('"finally"... Sempre sera executado com erro ou nao');
  }
}
