import 'package:get/get.dart';
import 'package:varadero/models/users/user.dart';
import 'package:varadero/services/LoginService.dart';

class LoginController extends GetxController {
  LoginService? loginservice;

  @override
  void onInit() {
    super.onInit();
    loginservice = LoginService();
  }

  Future<bool> registerUser(User user) async {
    var request = await loginservice!.registerUser(user);

    if (request.statusCode == 200) {
      print(request.body);
      return true;
    } else {
      print(request.statusText);
      return false;
    }
  }
}
