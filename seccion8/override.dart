class Persona {
 String nombre;
 int edad;

 Persona(this.edad, this.nombre);

 void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona{
  String? direccion;
  List ordenes = [];

  Cliente(int edad, String nombre) : super(edad, nombre);

  @override
  void imprimirNombre(){
    super.imprimirNombre();
    print('Nombre 2: $nombre, Edad: $edad');
  }
  
}


main(List<String> args) {
  final persona = new Cliente(14, 'Bob');
  persona.imprimirNombre();
}