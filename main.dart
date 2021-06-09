import 'dart:io';

Future main() async {
  // #docregion bind
  // var server = await HttpServer.bind(
  //   InternetAddress.loopbackIPv4,
  //   4040,
  // )
  var server = await HttpServer.bind(
    '0.0.0.0',
    8080,
  );
  // #enddocregion bind
  print('Listening on localhost:${server.port}');

  // #docregion listen
  await for (HttpRequest request in server) {
    print(request.uri);
    Map<String, String> map = { 
      'clave': 'valor',
      'clave2': 'valor2'
    };
    if ('${request.uri}' == '/a') {
      request.response.write(map);
      await request.response.close();
    } else{
      if('${request.uri}' != '/favicon.ico'){
        print('Request: ${request.uri}');
        request.response.write('Hello, world!');
        await request.response.close();
      }
    }
  }
}
