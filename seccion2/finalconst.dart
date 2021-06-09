main(){

  var a = 10;
  final double b = 10;
  const double c = 10;

  // a = 20;
  // b = 20;
  // c = 20;

  final personasFinal = ['Juan','Pedro'];
  const personasConst = ['Juan','Pedro'];

  // final List<String> personasFinal = ['Juan','Pedro'];
  // List<String> personasConst = const ['Juan','Pedro'];

  // personasFinal.add('Maria');
  // personasConst.add('Maria');

  print(personasFinal);

  late final double x;

  x = 10;


  print(x);
}