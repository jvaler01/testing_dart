import 'dart:io';
void main(){
  // String greet = greeter();
  // print(greet);
  // write('ret');
  // write2('ret', 1); // argumentos por posicion
  // write3(count: 2, name: 'write3'); // argumentos por nombre




  // String name = 'pipo';
  // String name2 = upperCase(name);
  // print(name);
  // print(name2);



  // Map<String, String> pj = {
  //   'name': 'pipo'
  // };
  // Map<String, String> pj2 = mapUpperCase(pj);
  // print(pj);
  // print(pj2);






  // int a = 10, b = 20;
  // int res = operation(a,b);
  // print(res);
  // print(operation2(a,b));


  // ---------- Funciones de flecha ---------
  // List<int> list = [1,3,4,6,7,8,9,45,5,4,3,3];
  // // var newList = list.where( (number){
  // //   return number >= 4;
  // // });

  // var newList = list.where( (n)=> n >= 4);

  // print(newList);
  // print(newList.toSet().toList()); //Iterable to Set to List




  getUser('100', ( Map user ) {
    print(user);
  });


}

String greeter(){
  print("Hello");

  print("World");
  
  return 'greet';
}

void write(String message, [String name = '']){ // name es opcional
  print('$message $name');
}

void write2(String name, int count){
  for(int i = 0; i < count; i++){
    print('$name');
  }
}

void write3({ required String name, int count = 10}){
  for(int i = 0; i < count; i++){
    print('$name');
  }
}

String upperCase(String text){
  return text.toUpperCase();
}

Map<String, String> mapUpperCase(Map<String, String> pj){

  pj = {... pj}; //Clonar para no modificar la original (pasada por referencia) dart siempre pasa por referencia

  pj['name'] = pj['name']?.toUpperCase() ?? 'No hay nombre';
  return pj;
}

int operation( int x, int y ){
  return x + y;
}

int operation2( int x, int y) => x + y;

void getUser( String id, Function callback ){

  Map user = {
    'id': id,
    'name': 'Pipo'
  };

  callback( user );

}