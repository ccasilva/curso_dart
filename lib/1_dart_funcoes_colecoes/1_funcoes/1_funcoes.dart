/*VOID = NAO RETORNA NADA*/
void main() {
  final valorCalculado = somaInteiros(10, 5);
  print('A soma de dois inteiros é $valorCalculado');
}

/*FUNCAO DE NIVEL SUPERIOR - É uma função que esta jogada dentro do arquivo*/
/*Evitar criar variaveis que ocupam posicoes de memoria que nao serve pra nada*/
int somaInteiros(int numero1, int numero2) {
  print('Executando a soma de inteiros ($numero1, $numero2)');
  return numero1 + numero2;
}
