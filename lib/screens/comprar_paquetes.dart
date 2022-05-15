import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/custom_text_labels.dart';
import 'package:varadero/contantes/contantes.dart';

class ComprarPaquetes extends StatelessWidget {
  const ComprarPaquetes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            const CircleAvatar(
              maxRadius: 50,
            ),
            SizedBox(height: Get.height * 0.02),
            const CustomTextLabels(
                texto: 'Paquetes disponibles',
                tamano: 25,
                color: Color.fromRGBO(80, 134, 193, 1)),
            SizedBox(height: Get.height * 0.05),
            const Expanded(
              child: PakageCardList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PakageCardList extends StatelessWidget {
  const PakageCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 4,
      itemBuilder: (BuildContext context, index) {
        return kcardList[index];
      },
    );
  }
}
