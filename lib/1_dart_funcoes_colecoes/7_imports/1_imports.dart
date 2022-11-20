import 'somas/soma.dart';
import 'soma_alias_1/soma.dart' as soma;
import 'soma_alias_2/soma.dart' as soma2;
//import 'package:dart_funcoes_colecoes/7_imports/somas/soma.dart';

void main() {
  var totalDoubles = somaDoubles(10, 10.1);
  var totalInteiros = somaInteiros(10, 10);

  /** 
   * Utilizando alias para nomear um import e metodos com o mesmo nome, mas em projetos diferentes.
   */
  var totaInteirosAlias1 = soma.somaAliasInteiros(1, 1);
  var totaInteirosAlias2 = soma2.somaAliasInteiros(2, 2);

  print('Total de doubles: $totalDoubles');
  print('Total de inteiros: $totalInteiros');
}
