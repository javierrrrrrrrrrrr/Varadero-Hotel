import 'package:flutter/material.dart';

class Separador extends StatelessWidget {
  const Separador({
    Key? key,
    required this.tamano,
  }) : super(key: key);

  final double tamano;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: tamano);
  }
}
