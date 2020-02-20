class Doooooggg{

  //Propiedades

  // String nombre;
  // int edad;
  // String bio;


  //Priivadas
  String _nombre;
  int _edad;
  String _bio;

  //Get Set
  String get getNombre {
    return _nombre;
  }
  set setNombre( String nombre ){
    _nombre = nombre;
  }
  int get getEdad {
    return _edad;
  }
  set setEdad( int edad ){
    _edad = edad;
  }
  String get getBio {
    return _bio;
  }
  set setBio( String bio ){
    _bio = bio;
  }
  //Constructores
  // Doooooggg(){
  //   _bio = 'constructor bio';
  // }
  Doooooggg( {String nombre = 'a', int edad = 0} ){
    _bio = 'constructor bio';
    this._nombre = nombre;
    this._edad = edad;
  }

  Doooooggg.dogNombre( this._nombre ){
    _bio = 'constructor nombre';
  }
  //Métodos

  @override
  String toString(){
    // return '$nombre $edad $bio';//solo publicas
    return '$_nombre $_edad $_bio';//solo publicas
    // return this.nombre;
  }
}
