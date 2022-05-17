import 'package:get/get.dart';
import 'package:varadero/models/users/user.dart';
import 'package:varadero/services/LoginService.dart';

class RegisterController extends GetxController {
  LoginService? loginservice;
  // Estos son los campos de inputs de register de la vista de register
  // Se pueden hacer con TextEditingController igual.
  var name = ''.obs,
      username = ''.obs,
      email = ''.obs,
      password = ''.obs,
      phoneNumber = 0.obs,
      isPasswordVisible = true.obs;

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
