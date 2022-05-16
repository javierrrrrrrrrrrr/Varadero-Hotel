import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/custom_text_labels.dart';

import '../Widget/cajonCuadrado.dart';
import '../Widget/separador.dart';

class MenuPaquetesPage extends StatelessWidget {
  const MenuPaquetesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: Get.width * 0.05, top: Get.height * 0.03),
              height: Get.height * 0.2,
              width: Get.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Get.height * 0.03),
                    child: const CircleAvatar(
                      radius: 40,
                    ),
                  ),
                  const Separador(tamano: 6),
                  const CustomTextLabels(
                    color: Color.fromRGBO(80, 134, 193, 1),
                    texto: 'Hola Maria',
                    tamano: 28,
                  ),
                  const Separador(tamano: 6),
                  const CustomTextLabels(
                    texto: 'Aqui puedes encontrar los ajustes de tu cuenta',
                    tamano: 16,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CajonCuadrado(
                  onPressed: () {
                    Get.toNamed('/buy');
                  },
                  foto: 'assets/caja1.png',
                  fontSize: 18,
                  texto: 'Comprar nuevo paquete',
                  color: const Color.fromRGBO(77, 152, 168, 0.45),
                ),
                const CajonCuadrado(
                  foto: 'assets/caja2.png',
                  fontSize: 18,
                  texto: 'Consultar  paquetes activos',
                  color: Color.fromRGBO(107, 51, 51, 0.45),
                ),
              ],
            ),
            Separador(tamano: Get.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CajonCuadrado(
                  foto: 'assets/tuerca.png',
                  fontSize: 18,
                  texto: 'Ajustes de mi cuenta',
                  color: Color.fromRGBO(255, 230, 0, 0.45),
                ),
                CajonCuadrado(
                  foto: 'assets/corazon.png',
                  fontSize: 18,
                  texto: 'Favoritos',
                  color: Color.fromRGBO(255, 2, 2, 0.45),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: Get.height * 0.03, left: 50),
              height: Get.height * 0.1,
              width: Get.width * 0.8,
              child: const Center(
                child: Text(
                  'A la compra de los servicios por paquete se les realiza una rebaja del 10%, a los servicios solos no se les hace rebaja',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromRGBO(87, 85, 85, 1),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
