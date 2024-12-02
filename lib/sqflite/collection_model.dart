class MyData {
  int id;
  int key;
  String value;

  MyData({required this.id, required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'key': key,
      'value': value,
    };
  }

  factory MyData.fromMap(Map<String, dynamic> map) {
    return MyData(
      id: map['id'],
      key: map['key'],
      value: map['value'],
    );
  }
}