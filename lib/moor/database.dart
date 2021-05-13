import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:mockito_test/injectible/database_module.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.moor.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@DataClassName("User")
class UserTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1)();
}

@injectable
@UseDao(tables: [UserTable])
class UserDao extends DatabaseAccessor<Database> with _$UserDaoMixin {
  UserDao(DatabaseModule _database) : super(_database.database);

  UserDao.fromDb(Database db) : super(db);

  Future<List<User>> getUser() async {
    return (select(userTable)).get();
  }

  Future<void> saveUser(User user) =>
      into(userTable).insertOnConflictUpdate(user);
}

@UseMoor(tables: [UserTable])
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 20;
}
