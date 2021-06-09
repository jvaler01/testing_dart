import 'clases/Doooooggg.dart';
import 'clases/mi_servicio.dart';

main(){
  // final doooooggg = new Doooooggg();
  // doooooggg.nombre = 'Pipo';
  // doooooggg.edad = 14;
  // doooooggg.bio = 'Es un perroooo';
  //
  // print(doooooggg);// No hace falta llamar a to



  // final doooooggg = new Doooooggg();
  // doooooggg..nombre = 'Pipo'
  //           ..edad = 14
  //           ..bio = 'Es un perroooo';
  //
  // print(doooooggg);// No hace falta llamar a toString


  //Privado
  // final doooooggg = new Doooooggg();
  // doooooggg.setNombre = 'Pipo';
  // doooooggg.setEdad = 14;
  // doooooggg.setBio = 'Es un perroooo';
  // print(doooooggg.getNombre);
  //
  // print(doooooggg);// No hace falta llamar a toString




  // final doooooggg = new Doooooggg(nombre: 'Pipo', edad: 14);
  // final doooooggg2 = new Doooooggg.dogNombre('Pipo2');
  // // doooooggg.setNombre = 'Pipo';
  // // doooooggg.setEdad = 14;
  // // doooooggg.setBio = 'Es un perroooo';
  // print(doooooggg.getNombre);
  //
  // print(doooooggg);// No hace falta llamar a toString
  // print(doooooggg2);



  // final cuadrado = new Cuadrado(10);
  //
  // print(cuadrado.area);



  // final sanFrancisco = new Location(12.2342, 54.34523);
  // final sanFrancisco2 = new Location(12.2342, 54.34524);
  // final sanFrancisco3 = new Location(12.2342, 54.34524);
  //
  // print(sanFrancisco == sanFrancisco2);
  // print(sanFrancisco3 == sanFrancisco2);
  //
  // const sanFrancisco4 = const Location(12.2342, 54.34525);
  // const sanFrancisco5 = const Location(12.2342, 54.34526);
  // const sanFrancisco6 = const Location(12.2342, 54.34526);
  // print(sanFrancisco4 == sanFrancisco5);
  // print(sanFrancisco6 == sanFrancisco5);




  // final figura = new Rectangulo(10, 12);
  //
  // print(figura);




  // // final herr = new Herramientas();
  // // Herramientas.listado.add('print');
  //
  // // Herramientas.listado.forEach(print);
  // Herramientas.imprimirListado();




  // Singleton
  // final spotifyService = new MiServicio();
  // spotifyService.url = 'https://api.spotify.com';

  // final youtubeService = new MiServicio();
  // youtubeService.url = 'https://api.youtube.com';
  // print(youtubeService == spotifyService);
  // print(youtubeService.url);
  // print(spotifyService.url);

  final spotifyService = new MiServicio();
  spotifyService.url = 'https://api.spotify.com';
  final youtubeService = new MiServicio();
  youtubeService.url = 'https://api.youtube.com';
  print(youtubeService == spotifyService);
  print(youtubeService.url);
  print(spotifyService.url);
}

class Herramientas{
  // static List<String> listado = ['Martillo', 'Soldador', 'Llave']; // Los metodos estaticos forman parte de la clase no de intancias
  static const List<String> listado = ['Martillo', 'Soldador', 'Llave']; // Los metodos estaticos forman parte de la clase no de intancias

  static void imprimirListado() => listado.forEach(print);
}

class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo;

  factory Rectangulo(int base, int altura){ // Debe de regresar una nueva instancia de rectangulo o la misma
    if(base == altura){
      return Rectangulo.cuadrado(base);
    }else{
      return Rectangulo.rectangulo(base,altura);
    }
  }

  Rectangulo.cuadrado(int base){
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura){
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'rectangulo';
  }

    @override
    String toString(){
      return {'base':base, 'altura':altura, 'area':area, 'tipo':tipo}.toString();
    }

}

class Location{
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
}

class Cuadrado{
  final int lado;
  final int area;

  Cuadrado(int lado):
    this.lado = lado,
    this.area = lado * lado;
}
