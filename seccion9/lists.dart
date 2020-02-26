main(List<String> args) {
  List<int> list = [1,2,3,4,5];
  List<int> list2 = [];
  List<int> list3 = [3,5,1,2,4];
  List<String> list4 = ['Tony', 'Peter'];

  print('Length: ${ list.length }');
  print('First: ${ list.first }');
  print('Last: ${ list.last }');
  print('is Empty: ${ list.isEmpty }');
  print('is not Empty: ${ list.isNotEmpty }');
  print('as Map: ${ list.asMap()[2] }');
  print('index of: ${ list.indexOf(2)}');

  // int mayor3 = list3.indexWhere((numero){
  //   if(numero > 3){
  //     return true;
  //   }else{
  //     return false;
  //   }
  // });
  
  int mayor3 = list3.indexWhere((numero) => (numero > 3 ) ? true : false);

  print('index where: $mayor3');

  print('remove: ${ list.remove(1) }');
  list.shuffle();
  print('shufle: $list');

  list3.sort();
  print('sort: $list3');
  print('reverse: ${ list3.reversed.toList() }');

  list4.forEach((nombre){
    nombre = nombre.toUpperCase();
    print(nombre);
  });

  final newList = list4.map((nombre)=>nombre.toUpperCase()).toList();
  print('newlist: ${ newList }');
  
}