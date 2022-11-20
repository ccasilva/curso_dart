void main() {
  // Temos 6 tipos
  // == (Igualdade), != (Diferença), > (Maior que), < (Menor que),
  // <= (Menor igual), >= (Maior igual)

  final idade = 18;
  final tipoPet = 'Gato';

  if (idade == 18) {
    print('Pode tirar habilitacao');
  }
  if (idade > 18) {
    print('Pode tirar habilitacao');
  }
  if (idade >= 18) {
    print('Pode tirar habilitacao');
  }
  if (tipoPet != 'cachororo') {
    print('Desculpa, mas nao temos nada para seu Pet.');
  }
}
