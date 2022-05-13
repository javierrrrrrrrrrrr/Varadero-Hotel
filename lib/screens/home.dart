import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/contantes/contantes.dart';
import '../Widget/appBar.dart';
import '../Widget/carta.dart';
import '../Widget/ovalo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          color: khomebodycolor,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomAppBar(),
            SizedBox(
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Ovalo(
                      texto: 'Precio',
                      ancho: 60,
                    ),
                    Ovalo(texto: 'Estrellas', ancho: 75),
                    Ovalo(texto: 'Cantidad de dias', ancho: 120),
                    Ovalo(
                      texto: 'Otros',
                      ancho: 50,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return const Carta();
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
      // bottomNavigationBar: const Navbar(),
    );
  }
}
