import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/screens/home.dart';
import 'package:varadero/screens/registro.dart';

import '../Widget/Textfield.dart';
import '../Widget/butomAcept.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                right: Get.width * 0.1,
                left: Get.width * 0.1,
                top: Get.height * 0.05,
              ),
              height: Get.height * 0.4,
              width: Get.width * 0.8,
              child: Image.asset('assets/foto1.jpg'),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: Get.height * 0.4,
                  left: Get.width * 0.05,
                  right: Get.width * 0.05),
              height: Get.height * 0.6,
              width: Get.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.08,
                    ),
                    CampoTexto(
                        icono: const Icon(Icons.person), hintext: "Usuario"),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    CampoTexto(
                      icono: const Icon(Icons.lock_open),
                      hintext: "Contraseña",
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.blue,
                          value: true,
                          onChanged: (value) {},
                        ),
                        const Text(
                          'Recuerdame',
                          style: TextStyle(
                              color: Color.fromRGBO(49, 47, 47, 1),
                              fontSize: 16),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: Get.width * 0.15),
                          child: const Text(
                            'Contraseña olvidada?',
                            style: TextStyle(
                                color: Color.fromRGBO(80, 134, 193, 1),
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    GestureDetector(
                      child: ButtomAcept(Texto: "Iniciar"),
                      onTap: () {
                        Get.to(const HomePage());
                      },
                    ),
                    const SizedBox(
                      height: 93,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'No tienes cuenta aun',
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          child: const Text(
                            '? Registrate',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                          onTap: () {
                            Get.to(const RegitroPage());
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
