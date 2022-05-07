import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/textfield.dart';
import 'package:varadero/contantes/contantes.dart';

import '../Widget/butomAcept.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                const InputField(
                  icono: Icon(Icons.person),
                  hintext: "Nombre",
                ),
                separador(),
                const InputField(
                  icono: Icon(Icons.person),
                  hintext: "Nombre de Usuario",
                ),
                separador(),
                const InputField(
                  icono: Icon(Icons.person),
                  hintext: "Contraseña",
                ),
                separador(),
                const InputField(
                  icono: Icon(Icons.person),
                  hintext: " Numero de telefono",
                ),
                separador(),
                const InputField(
                  icono: Icon(Icons.person),
                  hintext: "Email",
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                ButtomAcept(
                  text: "Comenzar",
                  height: Get.height * 0.07,
                  width: Get.width,
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
