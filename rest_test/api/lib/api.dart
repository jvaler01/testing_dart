import 'dart:io';
import 'dart:convert';

import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';

import 'package:api/db.dart';

class Api {
  Router get router {
    final Map<String, String> data = { 
      'clave': 'valor',
      'clave2': 'valor2'
    };
    final router = Router();

    router.get('/a', (Request request) async {
      final db = DB().database;
      
      return Response.ok(json.encode(data),
        headers: {'Content-Type': 'application/json'});
    });
    return router;
  }
}