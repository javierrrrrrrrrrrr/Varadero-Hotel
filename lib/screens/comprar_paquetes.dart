import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/TextoCamp.dart';

class ComprarPaquetesPage extends StatelessWidget {
  const ComprarPaquetesPage({Key? key}) : super(key: key);

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
                  Separador(tamano: 6),
                  const Textos(
                    color: Color.fromRGBO(80, 134, 193, 1),
                    texto: 'Hola Maria',
                    tamano: 28,
                  ),
                  Separador(tamano: 6),
                  const Textos(
                    texto: 'Aqui puedes encontrar los ajustes de tu cuenta',
                    tamano: 16,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                CajonCuadrado(
                  foto: 'assets/caja1.png',
                  fontSize: 18,
                  texto: 'Comprar nuevo paquete',
                  color: const Color.fromRGBO(77, 152, 168, 0.45),
                ),
                CajonCuadrado(
                  foto: 'assets/caja2.png',
                  fontSize: 18,
                  texto: 'Consultar  paquetes activos',
                  color: const Color.fromRGBO(107, 51, 51, 0.45),
                ),
              ],
            ),
            Separador(tamano: Get.height * 0.05),
            Row(
              children: [
                CajonCuadrado(
                  foto: 'assets/tuerca.png',
                  fontSize: 18,
                  texto: 'Ajustes de mi cuenta',
                  color: const Color.fromRGBO(255, 230, 0, 0.45),
                ),
                CajonCuadrado(
                  foto: 'assets/corazon.png',
                  fontSize: 18,
                  texto: 'Favoritos',
                  color: const Color.fromRGBO(255, 2, 2, 0.45),
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

class Separador extends StatelessWidget {
  Separador({
    Key? key,
    required this.tamano,
  }) : super(key: key);

  double tamano;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: tamano);
  }
}

class CajonCuadrado extends StatelessWidget {
  CajonCuadrado({
    Key? key,
    required this.color,
    required this.texto,
    required this.fontSize,
    required this.foto,
  }) : super(key: key);
  Color color;
  String texto;
  String foto;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Get.width * 0.04,
        right: Get.width * 0.04,
      ),
      height: Get.height * 0.23,
      width: Get.height * 0.2,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 18,
            top: 15,
            child: Image.asset(foto),
          ),
          Positioned(
            top: 95,
            child: SizedBox(
              width: Get.width * 0.4,
              child: Text(
                texto,
                style: TextStyle(
                  fontSize: fontSize,
                  color: const Color.fromRGBO(80, 134, 193, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
