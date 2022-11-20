void main() {
  /*
     Lembrando ...
     () = Interable
     [] = Lista
  */
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  //Expand
  //Array Bidimensional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  var listaNova = [...lista[0], ...lista[1]];
  print(listaNova);

  var listaNova2 = lista.expand((numeros) => numeros);
  print(listaNova2); // Ele vai retorna um Interable

  var listaNova3 = lista.expand((numeros) => numeros).toList();
  print(listaNova3); // Ele vai retorna uma lista

  print('.any');
  final listaBusca = ['Rodrigo', 'Joao', 'Jose'];

  if (listaBusca.any((nome) => nome == 'Joao')) {
    print('Tem Joao');
  } else {
    print('Nao tem Joao');
  }

  print('.every');
  final listaBusca2 = ['Rodrigo', 'Joao', 'Jose'];

  if (listaBusca2.every((nome) => nome.contains('J'))) {
    print('Todos os nomes tem a letra J');
  } else {
    print('Nem todos os nomes tem a letra J');
  }

  print('.sort');
  var listaParaOrdenacao = [99, 22, 10, 9, 0, 765, 2, 1, 3, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomeOrdenacao = [
    'Rodrigo',
    'Joao',
    'Jose',
    'Andre',
    'Carlos',
    'Diego'
  ];
  listaNomeOrdenacao.sort();
  print(listaNomeOrdenacao);

  var listaPaciente = [
    'Rodrigo Rahman|37',
    'Luana Rahman|37',
    'Carlos Silva|32',
    'Simone Brasil|18',
    'Roberto Junior|5',
    'Victor Matheus|16',
  ];

  listaPaciente.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });

  print(listaPaciente);
  print('.sort com CompareTO');
  var listaPaciente2 = [
    'Rodrigo Rahman|37',
    'Luana Rahman|37',
    'Carlos Silva|32',
    'Simone Brasil|18',
    'Roberto Junior|5',
    'Victor Matheus|16',
  ];

  listaPaciente2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(1.compareTo(2)); // => -1
  print(2.compareTo(1)); // => 1
  print(1.compareTo(1)); // => 0
  print(listaPaciente2);

  print('');

  var listaPaciente3 = [
    'Rodrigo Rahman|37',
    'Luana Rahman|37',
    'Carlos Silva|32',
    'Simone Brasil|18',
    'Roberto Junior|5',
    'Victor Matheus|16',
  ];

  print('Compartilhando uma lista por referencia de memoria');
  print('Antes - $listaPaciente3');
  funcaoQualquer(listaPaciente3);
  print('Depois - $listaPaciente3');
}

void printAcademia(int valor) {
  print(valor);
}

void funcaoQualquer(List<String> pacientes) {
  // Criar uma nova lista para nao alterar a memoria da atual.
  final localPacientes = [...pacientes];

  localPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(localPacientes);
}
