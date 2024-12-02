import 'package:flutter/material.dart'; // Import your custom database class
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/sqflite/table/table_list.dart';
import 'package:word_meaning/utils/color.dart';

class CustomDatabase {
  static final CustomDatabase instance = CustomDatabase._init();
  static Database? _database;

  CustomDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('custom_database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // You can add default tables here if needed
      },
    );
  }

  // Method to dynamically create a table with a custom name
  Future<void> createCustomTable(String tableName) async {
    final db = await instance.database;
    // await db.execute('''
    //   CREATE TABLE IF NOT EXISTS $tableName (
    //     id INTEGER PRIMARY KEY AUTOINCREMENT,
    //     name TEXT NOT NULL,
    //     description TEXT
    //   )
    // ''');
    await db.execute('''
  CREATE TABLE IF NOT EXISTS $tableName (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    word TEXT,
    meaning TEXT,
    sentence TEXT
  )
''');

    print("Table $tableName created.");
  }

  // Method to insert data into a custom table
  Future<void> insertIntoCustomTable(
      String tableName, String word, String meaning, String sentence) async {
    final db = await instance.database;
    await db.insert(tableName, {
      'id': DateTime.now().microsecondsSinceEpoch,
      'word': word,
      'meaning': meaning,
      'sentence': sentence
    });
  }

  // Method to retrieve data from a custom table
  Future<List<Map<String, dynamic>>> getAllFromCustomTable(
      String tableName) async {
    final db = await instance.database;
    return await db.query(tableName);
  }

  // Method to delete data from a custom table
  Future<void> deleteFromCustomTable(String tableName, int id) async {
    final db = await instance.database;
    await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  // Fetch all table names
  Future<List<String>> getAllTables() async {
    final db = await instance.database;
    final result = await db.rawQuery(
        "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'android_%' AND  name NOT LIKE 'sqlite_%' ;");

    List<String> tables = result.map((row) => row['name'] as String).toList();
    return tables;
  }

  Future<void> close() async {
    final db = await instance.database;
    db.close();
  }
}

class CustomTableView extends StatefulWidget {
  final String tabelname;

  const CustomTableView({super.key, required this.tabelname});
  @override
  _CustomTableViewState createState() => _CustomTableViewState();
}

class _CustomTableViewState extends State<CustomTableView> {
  final TextEditingController wordController = TextEditingController();
  final TextEditingController meaningController = TextEditingController();
  final TextEditingController sentenceController = TextEditingController();
  List<Map<String, dynamic>> _tableData = [];
  @override
  void initState() {
    super.initState();

    setState(() {
      _fetchTableData();
    });
  }

  @override
  void dispose() {
    wordController.dispose();
    meaningController.dispose();
    sentenceController.dispose();
    super.dispose();
  }

  Future<void> _addRecord() async {
    String tableName = widget.tabelname;
    String word = wordController.text;
    String meaning = meaningController.text;
    String sentence = sentenceController.text;

    if (tableName.isNotEmpty && word.isNotEmpty) {
      await CustomDatabase.instance
          .insertIntoCustomTable(tableName, word, meaning, sentence);
      _fetchTableData();
      wordController.clear();
      meaningController.clear();
      sentenceController.clear();
    }
  }

  Future<void> _fetchTableData() async {
    String tableName = widget.tabelname;
    if (tableName.isNotEmpty) {
      final data =
          await CustomDatabase.instance.getAllFromCustomTable(tableName);
      setState(() {
        _tableData = data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tabelname),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Expanded(
          child: ListView.builder(
            itemCount: _tableData.length,
            itemBuilder: (context, index) {
              final item = _tableData[index];
              return CustomListItemView(
                // onTap: () => Get.to(TableListView()),
                // title: Text(i),
                // subtitle: Text('),
                word: Word(
                  1,
                  item['word'],
                  item['meaning'],
                  item['sentence'],
                ),
                onPressed: () {},
                index: index,
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
      showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Container(
                  padding: EdgeInsets.all(10),
                  width: 400,
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      TextField(
                        controller: wordController,
                        decoration: InputDecoration(labelText: 'Word'),
                      ),
                      TextField(
                        controller: meaningController,
                        decoration: InputDecoration(labelText: 'Meaning'),
                      ),
                      TextField(
                        controller: sentenceController,
                        decoration: InputDecoration(labelText: 'Sentence'),
                      ),
                      ElevatedButton(
                        onPressed: _addRecord,
                        child: Text('Add Record'),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }
}

class CustomListItemView extends StatelessWidget {
  const CustomListItemView({
    super.key,
    required this.word,
    required this.onPressed,
    required this.index,
  });
  final VoidCallback onPressed;

  final Word word;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: listColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          onTap: onPressed,
          leading: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(100)),
            height: 45,
            width: 45,
            child: FittedBox(
              child: Text(
                '${index + 1}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15, fontFamily: 'Cera Pro', color: Colors.white),
              ),
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(icon: Icon(Icons.edit), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ],
          ),
          title: Text(
            '${word.word.capitalizeFirst}',
            style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Cera Pro',
                fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            ' ${word.meaning.capitalizeFirst}',
            maxLines: 1,
            style: const TextStyle(fontSize: 15, color: Colors.grey),
          ),
        ));
  }
}
