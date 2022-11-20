void main() {
  final diaDaSemana = 1;
  String? diaDaSemanaStr;

  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'Domingo';
      break;
    case 1:
      diaDaSemanaStr = 'Segunda-Feira';
      break;
    default:
      diaDaSemanaStr = 'Não identificado.';
      break;
  }

  print(diaDaSemanaStr);
}
