import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CampoTexto extends StatelessWidget {
  CampoTexto({Key? key, this.icono, required this.hintext}) : super(key: key);

  Widget? icono;
  String hintext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIconColor: const Color.fromRGBO(1, 138, 190, 1),
        prefixIcon: icono,
        hintText: hintext,
        border: OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(Get.width * 0.0025))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2))),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2))),
      ),
    );
  }
}
