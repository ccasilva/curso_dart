void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print('Exercicio 1 - Resultado:');
  for (var paciente in pacientes) {
    var listaPaciete = paciente.split('|');
    //final idade = int.tryParse(pacienteDados[1]) ?? 0;
    if (listaPaciete[1].isNotEmpty) {
      if (int.tryParse(listaPaciete[1])! > 20) {
        print(
            '${listaPaciete[0]} sua idade é ${listaPaciete[1]} maior que 20 anos.');
      }
    }
  }
  print('');

  //! 2 - Apresente quantos pacientes existem para cada profissão
  //! (desenvolvedor, estudante, dentista, jornalista)
  print('Exercicio 2 - Resultado:');
  int totDesenvolvedor = 0;
  int totEstudante = 0;
  int totDentista = 0;
  int totJornalista = 0;

  for (var paciente in pacientes) {
    var listaPaciete = paciente.split('|');
    if (listaPaciete[2].isNotEmpty) {
      if (listaPaciete[2].toLowerCase() == 'desenvolvedor') {
        totDesenvolvedor++;
      } else if (listaPaciete[2].toLowerCase() == 'estudante') {
        totEstudante++;
      } else if (listaPaciete[2].toLowerCase() == 'dentista') {
        totDentista++;
      } else if (listaPaciete[2].toLowerCase() == 'jornalista') {
        totJornalista++;
      }
    }
  }
  print('O total de desenvolvedores é $totDesenvolvedor');
  print('O total de estudantes é $totEstudante');
  print('O total de dentistas é $totDentista');
  print('O total de jornalistas é $totJornalista');
  print('');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('Exercicio 2 - Resultado:');
  int totSP = 0;

  for (var paciente in pacientes) {
    var listaPaciete = paciente.split('|');
    if (listaPaciete[2].isNotEmpty) {
      if (listaPaciete[3].toLowerCase() == 'sp') {
        totSP++;
      }
    }
  }
  print('O total de pacitentes em SP é $totSP');
  print('');
}
