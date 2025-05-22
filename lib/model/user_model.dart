// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? token;
  String? id;
  String? name;
  String? email;
  String? password;
  DateTime? createdAt;
  DateTime? updatedAt;

  UserModel({
    this.token,
    this.id,
    this.name,
    this.email,
    this.password,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    token: json["token"],
    id: json["id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    createdAt:
        json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt:
        json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "id": id,
    "name": name,
    "email": email,
    "password": password,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
  };
}
