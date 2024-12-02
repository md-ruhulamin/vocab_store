import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:word_meaning/common/model/word_model.dart'; // Assuming your word model is in this file

class DatabaseHelper {
  static const _databaseName = 'word_database.db';
  static const _databaseVersion = 1;
  static const tableName = 'words';

  static late Future<Database> _database;

  static Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    _database = openDatabase(
      join(await getDatabasesPath(), _databaseName),
      version: _databaseVersion,
      onCreate: _onCreate,
    );

    return _database;
  }
  static void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableName (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        word TEXT,
        meaning TEXT,
        sentence TEXT
      )
    ''');
  }

  static Future<void> storeMap(Map<int, Word> map) async {
    final db = await database;
    final batch = db.batch();

    map.forEach((key, word) {
      batch.insert(
        tableName,
        word.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });

    await batch.commit();
  }

  static Future<Map<int, Word>> loadMap() async {
    final db = await database;
    final result = await db.query(tableName);

    final map = <int, Word>{};
    for (var item in result) {
      final word = Word.fromMap(
        item,
      );
      map[word.id] = word;
    }

    return map;
  }
}
