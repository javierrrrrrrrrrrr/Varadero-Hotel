import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:varadero/models/users/login_response.dart';
import 'package:varadero/models/users/user.dart';
import 'package:varadero/services/LoginService.dart';

class LoginController extends GetxController {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var username = ''.obs,
      password = ''.obs,
      isPasswordVisible = true.obs,
      remindedPass = ''.obs;
  var isRemeberCheck = false.obs;

  var user = User(email: '', name: '', password: '', username: '').obs;

  LoginService? loginservice;

  @override
  void onInit() async {
    super.onInit();
    loginservice = LoginService();
  }

  Future<bool> loadSessionSaved() async {
    final SharedPreferences prefs = await _prefs;
    remindedPass.value = prefs.getString('pass') ?? '';
    password.value = remindedPass.value;
    username.value = prefs.getString('username') ?? '';
    isRemeberCheck.value = prefs.getBool('savedSession') ?? false;
    return true;
  }

  // TODO: Buscar un video de como se usa el sharedPreferences...
  Future<bool> loginUser(String username, String password) async {
    var request = await loginservice!.loginUser(username, password);
    final SharedPreferences prefs = await _prefs;

    if (request.statusCode == 200) {
      var response = LoginResponse.fromJson(json.encode(request.body));

      await prefs.setString('token', response.token!);
      String token = prefs.getString('token')!;
      print('Este es el token del user : $token');

      user.value = response.user;
      return true;
    } else {
      return false;
    }
  }
}
