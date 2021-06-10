import 'package:database/database.dart';
import 'package:database/database_adapter.dart';
import 'package:database/sql.dart';
import 'package:database_adapter_postgre/database_adapter_postgre.dart';

class DB {
  final database = Postgre(
    host: 'localhost',
    port: 5432,
    user: 'test',
    password: 'test',
    databaseName: 'test',
  ).database();
}