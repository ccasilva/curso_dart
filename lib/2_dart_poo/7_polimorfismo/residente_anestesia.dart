import 'anestesista.dart';

class ResidenteAnestesia extends Anestesista {
  @override
  void operar() {
    print('Preparar e esterelizar os equipamentos - Residente');
    super.operar();
  }
}
