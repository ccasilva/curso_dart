void main() {
  //Funcoes Arrow
  print(somaInteirosArrow(5, 2));

  //Funcoes anonimas
  var funcaoAnonima = () {
    print('Chamou a funcao da variavel');
    return 9090;
  };

  print(funcaoAnonima());

  var numero1 = 10;
  var numero2 = 5;
  var funcaoAnonimo2 = () {
    return numero1 + numero2;
  };

  print('Funcao anonima 2 retorno => ${funcaoAnonimo2()}');

  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada');

  //Typedef
  funx2((nome) {});
}

int somaInteirosArrow(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueReceONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Carlos Silva';
  print('Finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueReceONome');
  funcaoQueReceONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro1(FuncaoQueRecebeNome funcaoQueReceONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Carlos Silva';
  print('Finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueReceONome');
  funcaoQueReceONome(nomeCompleto);
}

void funx2(FuncaoQueRecebeNome nome) {}

//Cria um ALIAS para funcao acima ...
typedef FuncaoQueRecebeNome = void Function(String nome);
