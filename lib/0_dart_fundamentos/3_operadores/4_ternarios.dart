void main() {
  //ternarios sao uma simplificacao do if e else.
  final idade = 28;
  if (idade > 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

  //(Condicao) ? faca algo(Se for verdadeiro) : outra coisa(Se for falso)
  final eMaiorDeIdade = (idade > 18 ? true : false);
  print('É maior de idade? ' + eMaiorDeIdade.toString());

  //Tome muito cuidado pq, um codigo bom nao é aquele que voce consegue fazer
  //tudo em uma linha, ele é aquele codigo claro e diz tudo que precisa fazer
  print((idade < 13)
      ? 'Crianca'
      : (idade > 12 && idade < 18)
          ? 'Adolecente'
          : 'Adulto');
}
