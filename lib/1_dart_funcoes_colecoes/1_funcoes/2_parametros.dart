void main() {
  print('A soma de 10 + 10 é ${somaInteirosParametrosObrigatorios(10, 10)}');

  print(
      'A soma de 2 + 0 é ${somaInteirosParametrosNomeados(numero2: 2, numero1: 0)}');

  print('A soma de 2 + 0 é ${somaInteirosParametrosNomeados(numero2: 1)}');

  print('A soma de 2 + 2 é ${(somaInteirosParametrosObrigatorios3(2, 2))}');

  print(
      'A soma de NULL + 30 é ${(somaInteirosParametrosObrigatorios2(numero1: null, numero2: 30))}');

  print(
      'A soma de NULL + NULL é ${(somaInteirosParametrosObrigatoriosDefault())}');

  somaInteirosParametrosOptional();
  somaInteirosParametrosOptional(1);
  somaInteirosParametrosOptional(1, 2);
}

int somaInteirosParametrosObrigatorios(int numero1, int numero2) {
  return numero1 + numero2;
}

/* Parametros nomeado sao nullables por default
   Parametros nomeados podem ser promovidos para non-null com checagem de null */
double somaInteirosParametrosNomeados({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

int somaInteirosParametrosObrigatorios3(int numero1, int numero2) {
  return numero1 + numero2;
}

int somaInteirosParametrosObrigatorios2(
    {required int? numero1, required int numero2}) {
  numero1 ??= 0; // Se for diferente de NULL é 0
  return numero1 + numero2;
}

int somaInteirosParametrosObrigatoriosDefault(
    {int numero1 = 0, int numero2 = 0}) {
  return numero1 + numero2;
}

void somaInteirosParametrosOptional([int numero1 = 0, int numero2 = 0]) {
  print('Parametros Optional - ${numero1 + numero2}');
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}

void parametrosNormaisComNomeados2(int numero, int numero2,
    [String? nome, int? idade]) {}
