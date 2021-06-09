import 'dart:io';
main() {
  createUser(1270, 1);

  createUser(2000, 2);
}

void printText( String text) => stdout.writeln(text);

String read() => stdin.readLineSync() ?? '';

void createUser(double salary, int id){

  printText('==== User $id ====');

  printText('Name?');
  String name = stdin.readLineSync() ?? '';
  printText('Old?');
  String years = stdin.readLineSync() ?? '';
  printText('Country?');
  String country = stdin.readLineSync() ?? '';

  final Map<String, dynamic> user = {
    'name': name,
    'years': years,
    'country': country
  };

  printText('User $id no deductions');
  printText(user.toString());

  double deductions = salary * 0.15;
  double netSalary = salary - deductions;

  user['salary'] = salary;
  user['deductions'] = deductions;
  user['netSalary'] = netSalary;
  
  printText(user.toString());
}