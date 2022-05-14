import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/TextoCamp.dart';
import 'package:varadero/screens/menu_paquetes.dart';

import '../Widget/separador.dart';

class ComprarPaquetes extends StatelessWidget {
  const ComprarPaquetes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CartaPaquetes> li = [];
    li.add(const CartaPaquetes(
      detalles: 'Ver servicios',
      paquete: 'Servicios sencillos',
      precio: 'Compra los servicios que desees',
      icono: '',
    ));
    li.add(const CartaPaquetes(
      detalles: 'Ver servicios del paquete',
      paquete: 'Paquete de Plata',
      precio: '\$ 200 al mes',
      icono: 'assets/plata.png',
    ));
    li.add(const CartaPaquetes(
      detalles: 'Ver servicios del paquete',
      paquete: 'Paquete de Oro ',
      precio: '\$ 300 al mes',
      icono: 'assets/oro.png',
    ));
    li.add(const CartaPaquetes(
      detalles: 'Ver servicios del paquete',
      paquete: 'Paquete de Diamante ',
      precio: '\$ 500 al mes',
      icono: 'assets/diamante.png',
    ));

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Separador(tamano: Get.height * 0.02),
          const CircleAvatar(
            maxRadius: 50,
          ),
          Separador(tamano: Get.height * 0.02),
          const Textos(
              texto: 'Paquetes disponibles',
              tamano: 25,
              color: Color.fromRGBO(80, 134, 193, 1)),
          Separador(tamano: Get.height * 0.05),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (BuildContext context, index) {
                return li[index];
              },
            ),
          ),
        ]),
      ),
    );
  }
}

class CartaPaquetes extends StatelessWidget {
  const CartaPaquetes({
    Key? key,
    required this.paquete,
    required this.precio,
    required this.detalles,
    this.icono,
  }) : super(key: key);

  final String paquete;
  final String precio;
  final String? icono;
  final String detalles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: Get.height * 0.03,
        left: Get.height * 0.02,
        right: Get.height * 0.02,
      ),
      height: Get.height * 0.15,
      width: Get.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Textos(
                    texto: paquete,
                    tamano: 22,
                    color: const Color.fromRGBO(80, 134, 193, 1)),
                Textos(texto: precio, tamano: 16),
              ],
            ),
          ),
          Positioned(
              top: 10,
              right: 15,
              child: icono == '' ? const Text('') : Image.asset(icono!)),
          Positioned(
            bottom: 5,
            right: 15,
            child: Textos(
              texto: detalles,
              tamano: 15,
              color: const Color.fromRGBO(80, 134, 193, 1),
            ),
          )
        ],
      ),
    );
  }
}
