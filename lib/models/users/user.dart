import 'dart:convert';

class User {
  User({
    this.id,
    required this.username,
    required this.name,
    this.phoneNumber,
    required this.email,
    required this.password,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String username;
  String name;
  int? phoneNumber;
  String email;
  String password;
  DateTime? createdAt;
  DateTime? updatedAt;

  User copyWith({
    int? id,
    String? username,
    String? name,
    int? phoneNumber,
    String? email,
    String? password,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      User(
        id: id ?? this.id,
        username: username ?? this.username,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        name: json["name"],
        phoneNumber: json["phone_number"],
        email: json["email"],
        password: json["password"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "username": username,
        "name": name,
        "phone_number": phoneNumber,
        "email": email,
        "password": password,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}
