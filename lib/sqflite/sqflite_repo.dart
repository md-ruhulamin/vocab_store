import 'package:sqflite/sqflite.dart';
import 'package:word_meaning/sqflite/collection_model.dart';
import 'package:word_meaning/sqflite/sqflite_helper.dart';

class MyRepository {
  Future<void> storeMap(Map<int, String> map) async {
    final db = await DatabaseHelper.database;
    final batch = db.batch();

    map.forEach((key, value) {
      batch.insert(
        DatabaseHelper.tableName,
        {
          'key': key,
          'value': value,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });

    await batch.commit();
  }

  Future<Map<int, String>> loadMap() async {
    final db = await DatabaseHelper.database;
    final result = await db.query(DatabaseHelper.tableName);

    final map = <int, String>{};
    for (var item in result) {
      final data = MyData.fromMap(item);
      map[data.key] = data.value;
    }

    return map;
  }
}