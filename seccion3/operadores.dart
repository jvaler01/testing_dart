main(){

  int a = 10 + 5;
  a = 20 - 10;
  a = 10 * 2;

  double b = 10 / 2;
  b = 10.0 % 3;
  b = -b;

  int c = 10 ~/3; // ~/ 3 parte entera del producto de la division

  int d = 1;

  d++;
  d--;

  // *= /=
  d += 2;
  d -= 2;

  //-----------------------

  int e = 10;
  int? f;

  f ??= 20; //si f es null entonces ahora es 20

  int g = 23;

  String resp = g > 20 ? 'G es mayor a 25' : 'C es menor a 20';
  print(resp);

  int h = f ?? e ?? 100; //Si f es null entonces es e
  print(h);

  //-----------Operadores relacionales

  /*

    <
    >
    >=
    <=

    ==
    !=

    10 is int
    10.0 is! int

  */  

}