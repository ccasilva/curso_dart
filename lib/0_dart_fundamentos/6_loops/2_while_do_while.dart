void main() {
  var numero = 0;
  print('While convencional');
  while (numero <= 10) {
    print(numero);
    numero++;
  }

  /*A diferenca dele para o WHILE, é que ele executara sempre UMA VEZ*/
  print('Do-While convencional');
  do {
    print(numero);
  } while (numero <= 3);
}
