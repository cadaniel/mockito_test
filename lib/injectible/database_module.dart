import 'package:injectable/injectable.dart';
import 'package:mockito_test/moor/database.dart';

@singleton
class DatabaseModule {
  late Database _database;
  DatabaseModule() {
    _database = Database();
  }
  Database get database => _database;
}