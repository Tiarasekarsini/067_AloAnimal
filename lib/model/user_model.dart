import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String namaPawrent;
  String email;
  String uid;
  UserModel({
    required this.namaPawrent,
    required this.email,
    required this.uid,
  });

  UserModel copyWith({
    String? namaPawrent,
    String? email,
    String? phone,
    String? password,
    String? uid,
  }) {
    return UserModel(
      namaPawrent: namaPawrent ?? this.namaPawrent,
      email: email ?? this.email,
      uid: uid ?? this.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'namaPawrent': namaPawrent,
      'email': email,
      'uid': uid,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      namaPawrent: map['namaPawrent'] ?? '',
      email: map['email'] ?? '',
      uid: map['uid'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(namaPawrent: $namaPawrent, email: $email,  uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.namaPawrent == namaPawrent &&
        other.email == email &&
        other.uid == uid;
  }

  @override
  int get hashCode {
    return namaPawrent.hashCode ^ email.hashCode ^ uid.hashCode;
  }

  static UserModel? fromFirebaseUser(User user) {}
}
