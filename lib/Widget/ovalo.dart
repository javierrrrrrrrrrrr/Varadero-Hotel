import 'package:flutter/material.dart';

class Ovalo extends StatelessWidget {
  Ovalo({
    Key? key,
    required this.texto,
    required this.ancho,
  }) : super(key: key);

  String texto;
  double ancho;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Container(
        height: 30,
        width: ancho,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                blurRadius: 4,
                spreadRadius: 1,
                offset: Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text(texto)),
      ),
    );
  }
}
