// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromMap(jsonString);

import 'dart:convert';

import 'package:varadero/models/users/user.dart';

class LoginResponse {
  LoginResponse({this.token, required this.user});

  String? token;
  User user;

  LoginResponse copyWith({
    String? token,
    User? user,
  }) =>
      LoginResponse(
        token: token ?? this.token,
        user: user ?? this.user,
      );

  factory LoginResponse.fromJson(String str) =>
      LoginResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromMap(Map<String, dynamic> json) => LoginResponse(
        token: json["token"],
        user: User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "token": token,
        "user": user.toMap(),
      };
}
