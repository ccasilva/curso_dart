void main() {
  //Modificadores de acesso = a forma como eu posso trabalhar com essa variavel
  var nomeCompleto = 'Carlos Silva';
  print(nomeCompleto);
  nomeCompleto = 'Simone Brasil';
  print(nomeCompleto);

  // Variaveis Finais:
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas do programa em tempo de execução (Runtime)
  final nomeCompletoFinal = 'Carlos Silva';
  final nomeCompletoFinal2 = nomeCompleto;
  //nomeCompletoFinal = 'Carlos'; // NAO PODE

  // Variaveis Const:
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas no programa em tempo de COMPILAÇÃO.
  // Não podem receber valores de outras variaveis e não ser que essas variáveis
  // forem const também
  // Utilize sem moderação
  const nomeCompletoConst = 'Carlos Silva';
  const nomeCompletoConst2 = nomeCompletoConst;
  // const nomeCompletoConst = nomeCompleto; // NAO PODE
}
