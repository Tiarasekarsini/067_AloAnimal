import 'dart:convert';

class DiagnosisModel {
  String? id;
  String? namaPenyakit;
  String? feedback;
  DiagnosisModel({
    this.id,
    this.namaPenyakit,
    this.feedback,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'namaPenyakit': namaPenyakit,
      'feedback': feedback,
    };
  }

  factory DiagnosisModel.fromMap(Map<String, dynamic> map) {
    return DiagnosisModel(
      id: map['id'],
      namaPenyakit: map['namaPenyakit'],
      feedback: map['feedback'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DiagnosisModel.fromJson(String source) =>
      DiagnosisModel.fromMap(json.decode(source));
}
