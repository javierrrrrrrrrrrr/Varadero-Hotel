import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/contantes/contantes.dart';

class ButtomAcept extends StatelessWidget {
  const ButtomAcept({
    Key? key,
    required this.text,
    this.height,
    this.width,
  }) : super(key: key);

  final String text;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? Get.height * 0.05,
      width: width ?? Get.width,
      decoration: BoxDecoration(
          color: kbuttonAcceptBgColor, borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: kbuttonAcceptTextColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
