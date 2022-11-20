import 'package:dart_academia_flutter/2_dart_poo/10_mixins/artista.dart';
import 'package:dart_academia_flutter/2_dart_poo/10_mixins/cantar.dart';
import 'package:dart_academia_flutter/2_dart_poo/10_mixins/dancar.dart';

/*
* Se existir uma interface
* implementar assim: class Joao extends Artista with Dancar implements ArtistaInterface
*
* Se existir apenas uma heranca e o mixin pertencer a ela
* implementar assim: class Joao extends Artista with Dancar
*
* O mixin "with" ela aceita nao mixins quanto classes abstratas
*
* """"" Os mixins nao extends """""
*/

class Joao extends Artista with Dancar, Cantar {}
