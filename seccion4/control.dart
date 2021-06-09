import 'dart:io';
import 'dart:math';

main(){
  var cad;

  //-----Escribir en la terminal
  stdout.writeln('Escribe tu edad: ');
  //-----Recibir de la terminal
  cad = stdin.readLineSync();

  if(isNumeric(cad)){
    int old = int.parse(cad);
    if(old < 18){
      stdout.writeln('Eres menor de edad');
    }else{
      stdout.writeln('Eres mayor de edad');
    }
  }else{
    stdout.writeln('Has escrito alguna letra');
  }

  for(int i = 0; i < 10; i++){
    if(i == 3){
      print('i es 3');
      continue;
      print('Esto no deberia aparecer');
    }else if(i == 8){
      print('final');
    }
  }

  outerLoop:
  for(int i = 0; i < 10; i++){
    innerLoop:
    for(int i = 0; i < 10; i++){
      print('a');
      if(i == 2){
        break outerLoop;
      }
    }
  }

  int rnd = Random().nextInt(7);
  switch(rnd){
    case 0:
      print('Lunes');
    break;
    case 1:
      print('Martes');
    break;
    case 2:
      print('Miercoles');
    break;
    case 3:
      print('Jueves');
    break;
    case 4:
      print('Viernes');
    break;
    case 5:
      print('Sabado');
    break;
    case 6:
      print('Domingo');
    break;
    default:
      print('No es un dia de la semana');
    break;
  }

}

bool isNumeric(var s) {
  if(s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}