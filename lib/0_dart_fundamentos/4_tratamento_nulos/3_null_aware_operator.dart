String? nome;
void main() {
  var sobrenome = ' Silva';
  //var nomeCompleto = ((nome != null) ? nome! + 'Silva' : 'Carlos Silva');
  var nomeCompleto = (nome ?? 'Carlos') + sobrenome;
  print(nomeCompleto);

  String? nomeCompleto2;
  print(nomeCompleto2 ?? 'Simone Brasil');
}
