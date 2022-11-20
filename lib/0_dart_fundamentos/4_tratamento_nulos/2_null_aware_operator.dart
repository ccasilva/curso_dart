String? nome;
void main() {
  var nomeCompleto = ((nome != null) ? nome! + 'Silva' : 'Carlos Silva');
  print(nomeCompleto);

  String nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + 'Silva';
  } else {
    nomeCompleto2 = 'Carlos Silva';
  }
  print(nomeCompleto2);

  var nomeLocal = nome;
  if (nomeLocal == null) {
    nomeLocal = 'Carlos';
  }

  var nomeCompleto3 = nomeLocal + ' Silva';
  print(nomeCompleto3);
}
