import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;

import '../models/users/user.dart';

class LoginProvider extends ChangeNotifier {
  int index = 1;

  late User user;

  selectOpcion(int i) {
    index = i;
    notifyListeners();
  }

  RegisterUser() async {
    var headers = {'Content-Type': 'application/json'};
    var request =
        http.Request('POST', Uri.parse('45.138.49.84:3000/api/signup'));
    request.body = json.encode({
      "username": "mmedeo",
      "name": "Migul",
      "phone_number": "53825574",
      "email": "mederosmiguel9@gmail.com",
      "password": "123"
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
