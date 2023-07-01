import 'dart:convert';

class Feedback1Model {
  String? id;
  final String namaPenyakit;
  final String feedback;
  Feedback1Model({
    this.id,
    required this.namaPenyakit,
    required this.feedback,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'namaPenyakit': namaPenyakit,
      'feedback': feedback,
    };
  }

  factory Feedback1Model.fromMap(Map<String, dynamic> map) {
    return Feedback1Model(
      id: map['id'],
      namaPenyakit: map['namaPenyakit'] ?? '',
      feedback: map['feedback'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Feedback1Model.fromJson(String source) =>
      Feedback1Model.fromMap(json.decode(source));
}
