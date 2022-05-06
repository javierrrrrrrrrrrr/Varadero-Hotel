import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtomAcept extends StatelessWidget {
  ButtomAcept({Key? key, required this.Texto, this.Altura, this.Ancho})
      : super(key: key);

  String Texto;
  double? Altura;
  double? Ancho;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Altura ?? Get.height * 0.05,
      width: Ancho ?? Get.width,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(80, 134, 193, 1),
          borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Text(
          Texto,
          style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1), fontSize: 20),
        ),
      ),
    );
  }
}
