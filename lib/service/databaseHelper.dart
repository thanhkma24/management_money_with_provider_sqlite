
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  String transactionTable = 'transaction_table';
  //create singleton class
  DatabaseHelper._privateContructor();
  static final DatabaseHelper instance = DatabaseHelper._privateContructor();


  Future<Database> initializeDatabase() async =>
      await openDatabase(join(await getDatabasesPath(), 'managerMoneyDatabase'),
      version: 1, onCreate: (Database db, int version) => onCreate(db, version));

  // Sql code to create the db table

  onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE $transactionTable('
          'id INTEGER PRIMARY KEY,'
          'title TEXT,'
          'description TEXT,'
          'amount TEXT,'
          'isIncome INTEGER,'
          'category TEXT,'
          'dateTime TEXT'
          ');',
    );
  }

  Future<void> insertData(String tableName, Map<String, Object?> data) async {
    final db = await initializeDatabase();
    // await db!.insert(tableName, data);
    await db!.insert(tableName, data);
  }

  Future<void> updateData(String tableName, Map<String, Object?> data, int id) async{
    final db = await initializeDatabase();
    await db!.update(tableName, data, where: 'id = ?', whereArgs: [id]);
  }

  Future<void> deleteData(String tableName, int id) async{
    final db = await initializeDatabase();
    await db!.delete(tableName, where: 'id=?', whereArgs: [id]);
  }



}


