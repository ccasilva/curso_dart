//Variaveis de nivel superior/atributo, que ficam fora da sua funcao (Global)
//Elas não podem ser inicializadas depois
//Não é permitido => String nomeCompletoSuperior;
String nomeCompletoSuperior = 'Carlos';
String? nomeCompletoSuperiorOpc;

void main() {
  /*
     nullsafety(Seguranca nula)
     [variavel]? - Vou criar uma variavel que recebe null
  */

  //Variaveis locais não precisam ser inicializadas de cara, porem.
  //Podem ser criadas sem valor e depois ser atribuido um valor
  String? nomeCompleto = null;
  String nomeCompletoOpc;

  //Variaveis locais que são nulas(nullable) por padrão
  //Se for atribuido um valor a ela, automaticamente elas são
  //Promovidas a não nulo (non-null)
  nomeCompleto = 'Teste do Carlos';
  nomeCompletoOpc = '2';

  //Variaveis de nivel superior NUNCA são promovidas para NÃO NULO(non-null)
  nomeCompletoSuperiorOpc = '';

  /*if (nomeCompleto != null) {
    print(nomeCompleto.length);
  }*/
  print(nomeCompleto.length);
  print(nomeCompletoOpc.length);
  //print(nomeCompletoSuperiorOpc.length); uma variavel superior/atributo nao pode ser promovita para vazio

  String? nome;
  //print(nome!);
  print(nome);

  late String
      sobrenome; // Apos essa variavel receber um valor ela nao pode ser nulla novamente
  sobrenome = 'Silva';
  print(sobrenome);
  //sobrenome = null;
}
