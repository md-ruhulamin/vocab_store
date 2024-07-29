class OnlineWord {
  String word;
  String phonetic;
  List<Phonetic> phonetics;
  List<Meaning> meanings;
  License license;
  List<String> sourceUrls;

  OnlineWord({
    required this.word,
    required this.phonetic,
    required this.phonetics,
    required this.meanings,
    required this.license,
    required this.sourceUrls,
  });

  factory OnlineWord.fromJson(Map<String, dynamic> json) {
    return OnlineWord(
      word: json['word'],
      phonetic: json['phonetic'],
      phonetics: (json['phonetics'] as List).map((i) => Phonetic.fromJson(i)).toList(),
      meanings: (json['meanings'] as List).map((i) => Meaning.fromJson(i)).toList(),
      license: License.fromJson(json['license']),
      sourceUrls: List<String>.from(json['sourceUrls']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'word': word,
      'phonetic': phonetic,
      'phonetics': phonetics.map((i) => i.toJson()).toList(),
      'meanings': meanings.map((i) => i.toJson()).toList(),
      'license': license.toJson(),
      'sourceUrls': sourceUrls,
    };
  }
}

class License {
  String name;
  String url;

  License({
    required this.name,
    required this.url,
  });

  factory License.fromJson(Map<String, dynamic> json) {
    return License(
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}

class Meaning {
  String partOfSpeech;
  List<Definition> definitions;
  List<dynamic> synonyms;
  List<dynamic> antonyms;

  Meaning({
    required this.partOfSpeech,
    required this.definitions,
    required this.synonyms,
    required this.antonyms,
  });

  factory Meaning.fromJson(Map<String, dynamic> json) {
    return Meaning(
      partOfSpeech: json['partOfSpeech'],
      definitions: (json['definitions'] as List).map((i) => Definition.fromJson(i)).toList(),
      synonyms: List<dynamic>.from(json['synonyms']),
      antonyms: List<dynamic>.from(json['antonyms']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'partOfSpeech': partOfSpeech,
      'definitions': definitions.map((i) => i.toJson()).toList(),
      'synonyms': synonyms,
      'antonyms': antonyms,
    };
  }
}

class Definition {
  String definition;
  List<dynamic> synonyms;
  List<dynamic> antonyms;
  String? example;

  Definition({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    this.example,
  });

  factory Definition.fromJson(Map<String, dynamic> json) {
    return Definition(
      definition: json['definition'],
      synonyms: List<dynamic>.from(json['synonyms']),
      antonyms: List<dynamic>.from(json['antonyms']),
      example: json['example'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'definition': definition,
      'synonyms': synonyms,
      'antonyms': antonyms,
      'example': example,
    };
  }
}

class Phonetic {
  String text;
  String? audio;
  String? sourceUrl;
  License? license;

  Phonetic({
    required this.text,
    this.audio,
    this.sourceUrl,
    this.license,
  });

  factory Phonetic.fromJson(Map<String, dynamic> json) {
    return Phonetic(
      text: json['text'],
      audio: json['audio'],
      sourceUrl: json['sourceUrl'],
      license: json['license'] != null ? License.fromJson(json['license']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'audio': audio,
      'sourceUrl': sourceUrl,
      'license': license?.toJson(),
    };
  }
}
