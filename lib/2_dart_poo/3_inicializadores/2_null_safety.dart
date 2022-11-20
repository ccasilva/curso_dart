// TOME MUITO CUIDADO COM O LATE E O !(FORCE NON NULL)
import 'package:dart_academia_flutter/2_dart_poo/3_inicializadores/cliente.dart';

void main() {
  var cliente = Cliente(nome: 'Carlos');
  cliente.nome = 'Rodrigo';
  print(cliente.nome);
  //cliente.nome = 'Silva';

  //Utilizar sempre a checagem de nulo
  if (cliente.idade != null) {
    print(cliente.idade!.toLowerCase());
  }
}
