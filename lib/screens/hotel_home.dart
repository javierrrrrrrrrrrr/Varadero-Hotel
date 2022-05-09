import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/likeButtom.dart';

import '../contantes/contantes.dart';

class HotelHomePage extends StatelessWidget {
  const HotelHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: khomebodycolor,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: Get.height * 0.45,
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
                        height: Get.height * 0.45,
                        width: Get.width,
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      left: 16,
                      child: SizedBox(
                        height: 100,
                        width: 150,
                        // color: Colors.red,
                        child: Center(
                          child: Text(
                            'Blau Resort',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(133, 170, 211, 1)),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
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
                const Divider(
                  height: 10,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
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
