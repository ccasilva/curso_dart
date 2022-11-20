void main() {
  final idade = 30;
  print('Sua idade é $idade');

  final valor = -20;
  if (valor.isNegative) {
    print('O valor $valor é negativo');
  }

  final valorDouble = 10.65;
  print(valorDouble.round());
  print(valorDouble.roundToDouble());

  final valorCertoString = '30';
  final valorErradoString = 'Carlos';

  final valorInt = int.parse(valorCertoString);
  final valorInt2 = int.tryParse(valorErradoString);
  print(valorInt);
  print(valorInt2);

  final precoCamiseta = 30.27876;
  print(precoCamiseta.toStringAsFixed(2));
}
