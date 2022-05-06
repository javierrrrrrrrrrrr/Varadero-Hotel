import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/Textfield.dart';

import '../Widget/butomAcept.dart';

class RegitroPage extends StatelessWidget {
  const RegitroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Get.width * 0.2,
                right: Get.width * 0.2,
                top: Get.height * 0.01),
            height: Get.height * 0.25,
            width: Get.width * 0.6,
            child: Image.asset(
              'assets/foto1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Get.width * 0.07,
                right: Get.width * 0.07,
                top: Get.height * 0.25),
            height: Get.height * 0.7,
            width: Get.width * 0.85,
            child: Column(children: [
              CampoTexto(
                icono: const Icon(Icons.person),
                hintext: "Nombre",
              ),
              Separador(),
              CampoTexto(
                icono: const Icon(Icons.person),
                hintext: "Nombre de Usuario",
              ),
              Separador(),
              CampoTexto(
                icono: const Icon(Icons.person),
                hintext: "Contraseña",
              ),
              Separador(),
              CampoTexto(
                icono: const Icon(Icons.person),
                hintext: " Numero de telefono",
              ),
              Separador(),
              CampoTexto(
                icono: const Icon(Icons.person),
                hintext: "Email",
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              ButtomAcept(
                Texto: "Comenzar",
                Altura: Get.height * 0.07,
                Ancho: Get.width,
              ),
            ]),
          ),
        ],
      ),
    );
  }

  SizedBox Separador() {
    return SizedBox(
      height: Get.height * 0.025,
    );
  }
}
