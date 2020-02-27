
import 'package:http/http.dart' as http;
import 'package:paquetes/classes/request_resp.dart' as request_resp;
import 'package:paquetes/classes/request_country.dart' as request_country;


void getRequestService(){
  final url = 'https://reqres.in/api/users?page=2';
  http.get(url).then((resp){
    // final body = jsonDecode(resp.body);
    // print(body);
    // print(body['data'][0]['id']);
    final response = request_resp.requestRespFromJson(resp.body);
    print(response.data[0].id);
  });
}



void getRequestServiceCountry(){
  final url = 'https://restcountries.eu/rest/v2/alpha/col';
  http.get(url).then((resp){
    final response = request_country.dataFromJson(resp.body);
    print('=====================');
    print('Pais: ${response.name}');
    print('Poblacion: ${response.population}');
    print('Fronteras:');
    response.borders.forEach((f) => print('     $f'));
    // print('Fronteras: ${response.borders}');
    print('Languages: ${response.languages[0].name}');
    print('Latitud: ${response.latlng[0]}');
    print('Longitud: ${response.latlng[1]}');
    print('Moneda: ${response.currencies[0].name}');
    print('Bandera: ${response.flag}');
    print('=====================');
  }).catchError((error) => print(error));
}
