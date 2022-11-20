import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;
  Telefone({
    required this.ddd,
    required this.telefone,
  });

  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      telefone: map['telefone'] ?? '',
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));
  //factory Telefone.fromJson(String json) {
  //  Map<String, dynamic> jsonMap = jsonDecode(json);
  //   final telefone = Telefone.fromMap(jsonMap);
  //   return telefone;
  // }

  @override
  String toString() => 'Telefone(ddd: $ddd, telefone: $telefone)';
}
