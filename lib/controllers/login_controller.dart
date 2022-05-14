import 'package:get/get.dart';
import 'package:varadero/models/users/user.dart';
import 'package:varadero/services/LoginService.dart';

class LoginController extends GetxController {
  LoginService? loginController;
  @override
  void onInit() {
    super.onInit();
    loginController = LoginService();
  }

  Future<bool> registerUser(User user) async {
    var request = await loginController!.registerUser(user);

    if (request.statusCode == 200) {
      print(request.body);
      return true;
    } else {
      print(request.statusText);
      return false;
    }
  }
}
