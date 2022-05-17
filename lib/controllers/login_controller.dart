import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:varadero/contantes/contantes.dart';
import 'package:varadero/models/users/login_response.dart';
import 'package:varadero/models/users/user.dart';
import 'package:varadero/services/LoginService.dart';

import 'package:http/http.dart' as http;

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
    final SharedPreferences prefs = await _prefs;
    remindedPass.value = prefs.getString('pass') ?? '';
  }

  Future<Object> read() async {
    final SharedPreferences prefs = await _prefs;
    return remindedPass.value = prefs.getString('pass') ?? '';
  }

  // TODO: Buscar un video de como se usa el sharedPreferences...
  Future<bool> loginUser(String username, String password) async {
    var request = await loginservice!.loginUser(username, password);
    final SharedPreferences prefs = await _prefs;

    if (request.statusCode == 200) {
      var response = LoginResponse.fromJson(request.body);

      await prefs.setString('token', response.token!);
      String token = prefs.getString('token')!;
      print('Este es el token del user : $token');

      user.value = response.user;
      return true;
    } else {
      return false;
    }
  }

  // Este es el metodo momentaneo para probar el login de api
  Future<bool> login(String username, String password) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('GET', Uri.parse('http://$kIpApi/api/signin/'));
    request.body = json.encode({"username": username, "password": password});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    final SharedPreferences prefs = await _prefs;

    if (response.statusCode == 200) {
      Map<String, dynamic> body =
          json.decode(await response.stream.bytesToString());

      prefs.setString('token', body['token']);
      String token = prefs.getString('token')!;
      print('Este es el token del user : $token');

      return true;
    } else {
      print(response.reasonPhrase);
      return false;
    }
  }
}
