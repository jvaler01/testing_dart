main() {
  final carro = new Carro();
  carro.encender();
  print(carro.kilometraje);
}

class Vehiculo{

  bool encendido = false;

  void encender(){
    encendido = true;
    print('Encendido');
  }

  void apagar(){
    encendido = false;
    print('Apagado');
  }
}

class Carro extends Vehiculo{
  int kilometraje = 0;
}
