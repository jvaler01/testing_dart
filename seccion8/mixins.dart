mixin Logger {

  void imprimir(String texto){
    final date = DateTime.now();
    print('$date ::::: $texto');
  }
}

abstract class Astro with Logger { //Se concatenan con comas
  String nombre;

  Astro(){
    imprimir('init Astro');
  }

  void existo(){
    imprimir('existo');
  }
}

class Asteroid extends Astro {
  String nombre;

  Asteroid(this.nombre){
    imprimir('Name: $nombre');
  }
}

main(List<String> args) {
  final asteroid = new Asteroid('Ceres');
}