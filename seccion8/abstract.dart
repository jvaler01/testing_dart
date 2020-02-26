import 'extends.dart';

main() {
  // final vehiculo = new Vehiculo(); // Esto no se puede hacer, las clases abstractas no se pueden instanciar

  final carro = new Carro();
  carro.encender();
  carro.revisarMotor();
  print(carro.kilometraje);
}

abstract class Vehiculo{

  bool encendido = false;

  void encender(){
    encendido = true;
    print('Encendido');
  }

  void apagar(){
    encendido = false;
    print('Apagado');
  }

  bool revisarMotor();
}

class Carro extends Vehiculo{
  int kilometraje = 0;

  @override
  bool revisarMotor() {
    // TODO: implement revisarMotor
    print('Motor OK');
    return true;
  }
}
