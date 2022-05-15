import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/custom_text_labels.dart';

class PakagesCard extends StatelessWidget {
  const PakagesCard({
    Key? key,
    required this.pakage,
    required this.price,
    required this.details,
    this.icon,
  }) : super(key: key);

  final String pakage;
  final String price;
  final String? icon;
  final String details;

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
                CustomTextLabels(
                    texto: pakage,
                    tamano: 22,
                    color: const Color.fromRGBO(80, 134, 193, 1)),
                CustomTextLabels(texto: price, tamano: 16),
              ],
            ),
          ),
          Positioned(
              top: 10,
              right: 15,
              child: icon == '' ? const Text('') : Image.asset(icon!)),
          Positioned(
            bottom: 5,
            right: 15,
            child: CustomTextLabels(
              texto: details,
              tamano: 15,
              color: const Color.fromRGBO(80, 134, 193, 1),
            ),
          )
        ],
      ),
    );
  }
}
