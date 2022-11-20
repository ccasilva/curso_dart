import 'dart:async';

void main() {
  print('Inicio do Main');
  scheduleMicrotask(() => print('Microtask #1'));
  Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  Future(() => print('Future #2'));
  Future(() => print('Future #3'));
  scheduleMicrotask(() => print('Microtask #2'));
  print('Fim do main');
}
