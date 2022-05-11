import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  int index = 1;

  selectOpcion(int i) {
    index = i;
    notifyListeners();
  }
}
