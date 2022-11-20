String? nome;

void main() {
  // =   -=   /=   %=   >>=   ˆ=
  // +=  *=   ˜=   ˜/n  <<=   $= |=

  var numero = 1;
  print(numero);
  // numero = numero + 2
  numero += 2;
  print(numero);
  // numero = numero - 2
  numero -= 2;
  print(numero);

  var numero2 = 2.0;
  numero2 /= 1.0;
  print(numero2);

  print(nome);
  nome = 'Carlos';
  print(nome);

  nome = null;
  //if(nome == null){ nome = 'Carlos Silva'}
  nome ??= 'Carlos Silva';
  print(nome);
}
