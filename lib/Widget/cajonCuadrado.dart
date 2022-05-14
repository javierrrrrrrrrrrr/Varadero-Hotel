import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CajonCuadrado extends StatelessWidget {
  const CajonCuadrado({
    Key? key,
    required this.color,
    required this.texto,
    required this.fontSize,
    required this.foto,
    this.onPressed,
  }) : super(key: key);
  final Color color;
  final String texto;
  final String foto;
  final double fontSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
      ),
      onTap: onPressed,
    );
  }
}
