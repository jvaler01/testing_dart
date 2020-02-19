import 'dart:collection';
import 'dart:io';
import 'dart:async';

main() async{
  // Queue<int> cola = new Queue();
  //
  // cola.addAll([10,20,30,40,50]);
  //
  // Iterator i = cola.iterator;
  //
  // print(cola);
  // while(i.moveNext()){
  //   print(i.current);
  // }
  // print(cola);



  // int volumen = 1; // 0 = volumen bajo, 1 = volumen medio etc...
  // Audio volumen = Audio.alto;
  //
  // switch( volumen ){
  //   case Audio.bajo:
  //     print('Volumen bajo');
  //   break;
  //   case Audio.medio:
  //     print('Volumen medio');
  //   break;
  //   case Audio.alto:
  //     print('Volumen alto');
  //   break;
  //   default:
  //     print('Error');
  //   break;
  // }



  // Future<String> timeout = Future.delayed( Duration(seconds: 3), () {
  //   print('Print 3 segundos despues');
  //   return 'Retorno del future';
  // });
  //
  // // timeout.then( (texto) =>print(texto));
  // timeout.then(print);
  //
  // print('Fin');




  // File file = new File( Directory.current.path + '/assets/personas.txt' );
  //
  // Future<String> f = file.readAsString();
  // // String f = file.readAsStringSync();
  // // print(f);
  // f.then ( print );
  //
  // print('Fin');


  // String path = Directory.current.path + '/assets/personas.txt';
  // String text = await leerArchivo(path); // await para esperar la resolucion de la funcion async
  // print(text);
  //
  // print('Fin');





  // Future<String> timeout = Future.delayed( Duration(seconds: 3), () {
  //   if(1 == 1){
  //     throw 'Error!!!!';
  //   }
  //   return 'Retorno del future';
  // });
  //
  // timeout.then(print).catchError((err)=>print(err));
  //
  // print('Fin');




  // final streamController = StreamController();
  //
  // streamController.stream.listen(
  //   (data)=>print('Hola: $data'),
  //   onError: (err) => print(err),
  //   onDone: () => print('Fin Stream'),
  //   cancelOnError: false,
  // );
  //
  // streamController.sink.add('Mundo');
  // streamController.sink.add('Mundo2');
  // streamController.sink.add('Mundo3');
  // streamController.sink.addError('Mundo4');
  // streamController.sink.add('Mundo5');
  // streamController.sink.close();
  // print('Fin');





  final streamController = new StreamController<String>.broadcast(); //.boradcast para multiples listen

  streamController.stream.listen(
    (data)=>print('Hola: $data'),
    onError: (err) => print(err),
    onDone: () => print('Fin Stream'),
    cancelOnError: false,
  );

  streamController.stream.listen(
    (data)=>print('Hola 2: $data'),
    onError: (err) => print(err),
    onDone: () => print('Fin Stream 2'),
    cancelOnError: false,
  );

  streamController.sink.add('Mundo');
  streamController.sink.add('Mundo2');
  streamController.sink.add('Mundo3');
  streamController.sink.addError('Mundo4');
  streamController.sink.add('Mundo5');
  streamController.sink.close();
  print('Fin');



}

enum Audio {
  bajo,
  medio,
  alto
}

Future<String> leerArchivo( String path ) async {

  File file = new File( Directory.current.path + '/assets/personas.txt' );

  return file.readAsString();
}
