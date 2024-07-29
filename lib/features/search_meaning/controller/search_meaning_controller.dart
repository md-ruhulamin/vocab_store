import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:word_meaning/features/search_meaning/model/onlinewordclass.dart';
Future<OnlineWord> fetchWord(String word) async {
  final response = await http.get(Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$word'));

  if (response.statusCode == 200) {
    return OnlineWord.fromJson(json.decode(response.body)[0]);
  } else {
    throw Exception('Failed to load word');
  }
}
