import 'dart:io';

import 'package:args/args.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

import 'package:api/api.dart';

// For Google Cloud Run, set _hostname to '0.0.0.0'.
const _hostname = 'localhost';


void main(List<String> args) async {
  var parser = ArgParser()..addOption('port', abbr: 'p');
  var result = parser.parse(args);

  // For Google Cloud Run, we respect the PORT environment variable
  var portStr = result['port'] ?? Platform.environment['PORT'] ?? '8080';
  var port = int.tryParse(portStr);

  if (port == null) {
    stdout.writeln('Could not parse port value "$portStr" into a number.');
    // 64: command line usage error
    exitCode = 64;
    return;
  }

  final app = Router();

  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, DELETE, OPTIONS',
    'Access-Control-Allow-Headers': 'Origin, Content-Type',
  };

  app.get('/', (Request request) async {
    return Response.ok(
      'Hello World',
      headers: {
        'Content-Type': 'application/json',
        ...corsHeaders,
      }
    );
  });

  app.mount('/api/', Api().router);

  final handler = Pipeline().addMiddleware((innerHandler) {
    return (request) async {
      final response = await innerHandler(request);
      print(request.headers);
      if (request.method == 'OPTIONS') {
        return Response.ok('', headers: corsHeaders);
      }
      return response;
    };
  }).addHandler(app);

  final server = await io.serve(handler, _hostname, port);
  print('Serving at http://${server.address.host}:${server.port}');
}

