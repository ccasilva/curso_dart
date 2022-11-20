void main() {
  final nome = 'Rodrigo Rahman';

  var subStringNome = nome.substring(8);
  print('Exemplo 1 - $subStringNome');

  var subStringNome2 = nome.substring(0, 7);
  print('Exemplo 2 - $subStringNome2');

  var sexo = 'masculino';

  if (sexo.startsWith('M')) {
    print('Olá seu sexo é Masculino.');
  } else if (sexo.startsWith('F')) {
    print('Olá seu sexo é Femino.');
  } else {
    print('Olá seu sexo não foi encontrado!');
  }

  if (sexo.toLowerCase().startsWith('m')) {
    print('Olá seu sexo é Masculino.');
  } else if (sexo.startsWith('F')) {
    print('Olá seu sexo é Femino.');
  } else {
    print('Olá seu sexo não foi encontrado!');
  }

  if (nome.contains('Rahman')) {
    print('É da familia Rahman');
  }

  //Interporlacao
  var primeiroNome = 'Carlos';
  var segundoNome = 'Silva';

  var saudacao =
      'Olá ' + primeiroNome + ' ' + segundoNome + ' seja muito bem vindo!';
  print(saudacao);

  var saudacao2 = 'Olá $primeiroNome $segundoNome seja muito bem vindo!';
  print(saudacao2);

  //Interpolacao com mais de uma acao para apresentar para o usuario.
  print('Olá ${primeiroNome.toLowerCase()}');
  print('Soma de 2 + 2 é ${2 + 2}');

  var paciente = 'Carlos Silva|32|Especialista de Sistema|SP';

  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  print('### Busca por Index');
  print(dadosPaciente[0]);
  print(dadosPaciente[1]);
  print(dadosPaciente[2]);
  print(dadosPaciente[3]);

  print('### Busca por FOR');
  for (var dado in dadosPaciente) {
    print(dado);
  }

  print('### Busca por FOREACH');
  dadosPaciente.forEach((dado) => print(dado));
  print('### Busca por FOREACH2');
  dadosPaciente.forEach(print);

  print('### Ler uma lista');
  var pacientes = [
    'Carlos Silva|32|Especialista de Sistema|SP',
    'Simone Silva|33|Analista de Recrutamento|SP'
  ];

  for (paciente in pacientes) {
    print(paciente);
    var dadosPaciente = paciente.split('|');
    print(dadosPaciente[0]);
  }
}
