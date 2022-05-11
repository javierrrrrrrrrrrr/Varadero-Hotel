import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/likeButtom.dart';

import '../Widget/TextoCamp.dart';
import '../Widget/navbar.dart';
import '../Widget/raitingBar.dart';
import '../contantes/contantes.dart';

class HotelHomePage extends StatelessWidget {
  const HotelHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: khomebodycolor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: Get.height * 0.35,
                  width: Get.width,
                  child: Image.asset(
                    'assets/blau.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Stack(
                  children: [
                    CustomPaint(
                      painter: _HeaderPaintDiagonal(),
                      child: SizedBox(
                        height: Get.height * 0.35,
                        width: Get.width,
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      left: 12,
                      child: SizedBox(
                        height: 65,
                        width: 150,
                        //  color: Colors.red,
                        child: Center(
                          child: Text(
                            'Blau Resort',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(133, 170, 211, 1)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 8,
                      right: 8,
                      child: SizedBox(
                        height: 50,
                        width: 150,
                        child: Card(
                          child: Center(
                              child: Text('\$ 4000/ noche',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ))),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      right: 30,
                      child: LikeButtom(),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Separador(0.03),
                  const Textos(texto: "Informacion del Hotel", tamano: 24),
                  Separador(0.01),
                  const Textos(texto: "Cadena Hotelera : Blau", tamano: 18),
                  Separador(0.01),
                  const Textos(
                      texto: "Direccion : Blau bla bla bla bla", tamano: 18),
                  Separador(0.02),
                  Padding(
                    padding: EdgeInsets.only(left: Get.height * 0.26),
                    child: SizedBox(
                      height: Get.height * 0.06,
                      width: Get.width * 0.29,
                      child: const Card(
                        color: Color.fromRGBO(80, 134, 193, 1),
                        child: Center(
                            child: Text(
                          'Reservar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )),
                      ),
                    ),
                  ),
                  Separador(0.02),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (BuildContext context, index) {
                  return Carta2();
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const Navbar(),
    );
  }

  Container Carta2() => Container(
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        height: Get.height * 0.1,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 1,
                  width: Get.width,
                  color: const Color.fromRGBO(0, 0, 0, 0.2),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Get.height * 0.001),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Color.fromRGBO(196, 196, 196, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Get.height * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Separador(0.01),
                            const Textos(texto: 'Maria Fernanda', tamano: 16),
                            const Textos(
                              texto: 'Comentario : Blau bla bla bla bla',
                              tamano: 16,
                            ),
                            Separador(0.01),
                            const Textos(
                              tamano: 12,
                              texto: 'Fecha * Hora',
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Positioned(
              top: 10,
              right: 0,
              child: RaitingBar(
                tamano: 15,
                separacion: 1.0,
              ),
            ),
          ],
        ),
      );

  SizedBox Separador(double x) {
    return SizedBox(
      height: Get.height * x,
    );
  }
}

class _HeaderPaintDiagonal extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(255, 255, 255, 1)
      ..style =
          PaintingStyle.fill //una vez dibujado cambiar por .fill //streoke
      ..strokeWidth = 10;
    final path = Path();
//  path.lineTo(horizontal(width), vertical(height));
    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(
        size.width * 0.4, size.height * 0.7, size.width * 0.6, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.7);

    //  path.lineTo(size.width * 0.4, size.height * 0.5);
    //  path.lineTo(size.width * 0.7, size.height * 1);
    //  path.lineTo(0, size.height);
    //path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
