import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:varadero/Widget/textfield.dart';
import 'package:varadero/contantes/contantes.dart';
import 'package:varadero/models/users/user.dart';
import 'package:varadero/provaiders/loginProvaider.dart';

import '../Widget/butomAcept.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user = User();
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: khomebodycolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const _PictureHeaderSection(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Get.width * 0.07,
              ),
              height: Get.height * 0.7,
              width: Get.width * 0.85,
              child: Column(children: [
                InputField(
                  onChanged: (value) {
                    user.name = value;
                  },
                  icono: const Icon(Icons.person),
                  hintext: "Nombre",
                ),
                separador(),
                InputField(
                  onChanged: (value) {
                    user.username = value;
                    print(user.username);
                  },
                  icono: const Icon(Icons.person),
                  hintext: "Nombre de Usuario",
                ),
                separador(),
                InputField(
                  onChanged: (value) {
                    user.password = value;
                  },
                  icono: const Icon(Icons.person),
                  hintext: "Contraseña",
                ),
                separador(),
                InputField(
                  onChanged: (value) {
                    user.phoneNumber = value;
                  },
                  icono: const Icon(Icons.person),
                  hintext: " Numero de telefono",
                ),
                separador(),
                InputField(
                  onChanged: (value) {
                    user.email = value;
                  },
                  icono: const Icon(Icons.person),
                  hintext: "Email",
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                ButtomAcept(
                  text: "Comenzar",
                  height: Get.height * 0.07,
                  width: Get.width,
                  onPressed: () async {
                    bool registered = await loginProvider.registerUser(user);
                    if (registered) {
                      Get.toNamed('/login');
                    }
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox separador() {
    return SizedBox(
      height: Get.height * 0.025,
    );
  }
}

class _PictureHeaderSection extends StatelessWidget {
  const _PictureHeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Get.width * 0.2,
      ),
      height: Get.height * 0.25,
      width: Get.width * 0.6,
      child: Image.asset(
        'assets/foto1.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
