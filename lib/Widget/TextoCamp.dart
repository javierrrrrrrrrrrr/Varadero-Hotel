import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  const Textos({
    Key? key,
    required this.texto,
    required this.tamano,
    this.color,
  }) : super(key: key);

  final String texto;
  final double tamano;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: tamano, color: color ?? Colors.black),
    );
  }
}
