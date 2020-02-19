main(){

  // -------------Numeros
  int a = 10;
  a = 20;
  // print(a);
  double b = 10.5;
  // print(b);
  int c = null; // int c;
  // int x = 10, b = 20, c = 30;
  int _a;


  // ---------------Strings
  String nombre = 'asdf';
  String nombre2 = "asdf";
  String nombre3 = '\'asdf';
  // print(nombre);
  // print(nombre2);
  // print(nombre3);
  String multi = '''
  asdf
  asdf3  
  ''';
  // print(multi);



  // ------------------Booleans
  bool activo = true;
  bool activo2;
  // print(activo);
  // print(activo2);



  // -------------------Listas - Arrays
  var neutro = ['a','b'];
  List<String> strings = ['a', 'b'];
  List<int> numeros = [1, 2];
  List<bool> booleanos = [true, false];

  List<String> strings2 = new List();
  strings2.add('a');
  strings2.addAll(['a','b','c']);
  strings2..add('a')
          ..add('b');

  // print(strings2);

  List<String> strings3 = new List(3); //[null, null, null]
  // strings3.addAll(['a','b','c']);
  strings3[0] = 'a';
  strings3[1] = 'b';
  strings3[2] = 'c';
  // print(strings3);



  // ----------------Sets NO ADMITEN VALORES DUPLICADOS
  var set1 = {'a','b','c'};
  Set<String> set2 = {'a','b','c'};
  set2.add('a');
  set2.add('a');
  set2.add('a');
  // print(set2);




  // ------------Mapas
  var mapa = { 
    'clave': 'valor',
    'clave2': 'valor2'
  };
  Map<String, String> mapa2 = { 
    'clave': 'valor',
    'clave2': 'valor2'
  };
  Map<String, dynamic> mapa3 = { 
    'clave': 'valor',
    'clave2': 'valor2',
    'clave3': 10
  };
  Map<String, dynamic> mapa4 = new Map();
  mapa4.addAll({ 'clave':'valor', 'clave2':'valor2' });
  print(mapa3['clave3']);
  print(mapa4);
}