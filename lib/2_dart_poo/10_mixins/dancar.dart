/*
* mixin Dancar on Artista{} = Exige utilizacao apenas com o extends Artista
* mixin Dancar{} = Nao exisge extends de nenhuma classe
*
*/

import 'package:dart_academia_flutter/2_dart_poo/10_mixins/artista.dart';

mixin Dancar on Artista {
  String dancar() {
    return 'Dança Forró';
  }
}
