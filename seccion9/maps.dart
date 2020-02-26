main(List<String> args) {
  final persona = {
    'nombre':'Pipo',
    'edad':14
  };
  
  final direccion = {
    'direccion':'asdf',
    'pais':'movies'
  };

  print('Persona: $persona');
  print('Length: ${ persona.length }');
  print('Keys: ${ persona.keys.toList() }');
  print('Values: ${ persona.values }');

  persona.addAll(direccion);
  print('Add all: $persona');
  persona.remove('edad');
  print('Remove: $persona');

  // persona.removeWhere((key, value){
  //   if(key != 'nombre'){
  //     return true;
  //   }else{
  //     return false;
  //   }
  // });

  // persona.removeWhere((key, value) => (key == 'nombre' ) ? false : true);
  print('Remove where: $persona');

  persona.forEach( (key, value) {
    print('Key: $key');
    print('Value: $value');
  });


  final persona2 = persona.map( (key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });
  print('Map: $persona2');
}