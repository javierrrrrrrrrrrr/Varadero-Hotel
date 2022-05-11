import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({
    Key? key,
    required this.texto,
    required this.tamano,
  }) : super(key: key);

  final String texto;
  final double tamano;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: tamano),
    );
  }
}
