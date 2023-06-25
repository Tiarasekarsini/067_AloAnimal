import 'dart:convert';

class AnimalModel {
  String? id;
  final String namaK;
  final String tanggalLahir;
  final String jeniskelamin;
  final String age;
  final String ras;
  final String color;
  AnimalModel({
    this.id,
    required this.namaK,
    required this.tanggalLahir,
    required this.jeniskelamin,
    required this.age,
    required this.ras,
    required this.color,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'namaK': namaK,
      'tanggalLahir': tanggalLahir,
      'jeniskelamin': jeniskelamin,
      'age': age,
      'ras': ras,
      'color': color,
    };
  }

  factory AnimalModel.fromMap(Map<String, dynamic> map) {
    return AnimalModel(
      id: map['id'],
      namaK: map['namaK'] ?? '',
      tanggalLahir: map['tanggalLahir'] ?? '',
      jeniskelamin: map['jeniskelamin'] ?? '',
      age: map['age'] ?? '',
      ras: map['ras'] ?? '',
      color: map['color'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimalModel.fromJson(String source) =>
      AnimalModel.fromMap(json.decode(source));
}
