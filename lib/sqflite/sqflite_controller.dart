import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:word_meaning/common/model/word_model.dart';
import 'package:word_meaning/sqflite/sqflite_helper.dart';

import 'sqflite_repo.dart';

class MyController extends GetxController {
  final _myRepository = MyRepository();
  final map = <int, String>{}.obs;

  Future<void> loadMapFromDatabase() async {
    final loadedMap = await _myRepository.loadMap();
    map.value = loadedMap;
  }

  Future<void> storeMapToDatabase() async {
    await _myRepository.storeMap(map.value);
  }
}

class SqfliteWordController extends GetxController {
  final map = <int, Word>{}.obs;

  Future<void> loadMapFromDatabase() async {
    final loadedMap = await DatabaseHelper
        .loadMap(); // Replace with your database helper's method
    map.value = loadedMap;
  }

  Future<void> storeMapToDatabase() async {
    await DatabaseHelper.storeMap(
        map.value); // Replace with your database helper's method
  }

  final wordController = TextEditingController();
  final meaningController = TextEditingController();
  final sentenceController = TextEditingController();

  void addWord() {
    final word = Word(1, wordController.text, meaningController.text,
        sentenceController.text);
    map.putIfAbsent(word.id, () => word);
    storeMapToDatabase();
    clearTextFields();
  
  }

  void clearTextFields() {
    wordController.clear();
    meaningController.clear();
    sentenceController.clear();
  }

  void updateWord(Word word) {
    map[word.id] = word;
    storeMapToDatabase();
  }

  void deleteWord(int id) {
    map.remove(id);
    storeMapToDatabase();
  }
}

class WordRepository {
  Future<void> insertWord(Word word) async {
    final db = await DatabaseHelper.database;
    await db.insert(DatabaseHelper.tableName, word.toMap());
  }

  Future<void> updateWord(Word word) async {
    final db = await DatabaseHelper.database;
    await db.update(DatabaseHelper.tableName, word.toMap(),
        where: 'id = ?', whereArgs: [word.id]);
  }
}
