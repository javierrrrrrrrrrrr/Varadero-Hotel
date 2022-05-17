import 'package:get/get.dart';
import 'package:varadero/contantes/contantes.dart';
import 'package:varadero/models/users/user.dart';

class LoginService extends GetConnect {
  //Register User
  Future<Response> registerUser(User user) {
    return post('http://$kIpApi/api/signup', {
      "username": user.username,
      "name": user.name,
      "phone_number": user.phoneNumber,
      "email": user.email,
      "password": user.password
    }, headers: {
      'Content-Type': 'application/json'
    });
  }

  Future<Response> loginUser(String username, String password) async {
    return post('http://$kIpApi/api/singin', {
      "username": username,
      "password": password,
    });
  }
}
