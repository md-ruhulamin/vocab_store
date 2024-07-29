class Word {
  final int id;
  final String word;
  final String meaning;
  final String sentence;

  Word(this.id, this.word, this.meaning, this.sentence);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'word': word,
      'meaning': meaning,
      'sentence': sentence,
    };
  }

  factory Word.fromMap(Map<String, dynamic> map, String id) {
    return Word(
      map['id'],
      map['word'],
      map['meaning'] ?? '',
      map['sentence'] ?? '',
    );
  }
}