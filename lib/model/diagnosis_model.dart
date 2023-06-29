import 'dart:convert';

class DiagnosisModel {
  String? id;
  final String namaPenyakit;
  DiagnosisModel({
    this.id,
    required this.namaPenyakit,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'namaPenyakit': namaPenyakit,
    };
  }

  factory DiagnosisModel.fromMap(Map<String, dynamic> map) {
    return DiagnosisModel(
      id: map['id'],
      namaPenyakit: map['namaPenyakit'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DiagnosisModel.fromJson(String source) =>
      DiagnosisModel.fromMap(json.decode(source));
}
