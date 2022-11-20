void main() {
  //&&(E), ||(Ou), !(Nao é alguma coisa)

  final sexo = 'M';
  final idade = 18;

  if (sexo == 'M') {
    if (idade >= 18) {
      print('Pode entrar!!!');
    } else {
      print('Não pode entrar!!!');
    }
  } else {
    print('Não pode entrar!!!');
  }
  /* Exemplo utilizando operador logico */
  if (sexo == 'M' && idade >= 18) {
    print('Pode entrar!!!');
  } else {
    print('Não pode entrar!!!');
  }

  //Operador || umas das condicoes precisam ser verdade
  if (sexo == 'M' || idade >= 18) {
    print('Pode entrar!!!');
  } else {
    print('Não pode entrar!!!');
  }

  /* Faz o inverso da condicao */
  if (!(sexo == 'M' && idade >= 18)) {
    print('Pode entrar!!!');
  } else {
    print('Não pode entrar!!!');
  }
}
