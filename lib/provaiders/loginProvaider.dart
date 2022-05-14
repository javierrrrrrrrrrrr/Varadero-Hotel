import 'package:flutter/material.dart';
import 'package:varadero/services/LoginService.dart';

import '../models/users/user.dart';

class LoginProvider extends ChangeNotifier {
  int index = 1;
  LoginService loginController = LoginService();

  selectOpcion(int i) {
    index = i;
    notifyListeners();
  }

  Future<bool> registerUser(User user) async {
    var request = await loginController.registerUser(user);

    if (request.statusCode == 200) {
      print(request.body);
      return true;
    } else {
      print(request.statusText);
      return false;
    }
  }
}
