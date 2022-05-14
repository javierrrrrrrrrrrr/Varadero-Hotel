import 'package:flutter/material.dart';
import 'package:varadero/Widget/hotel_card.dart';
import 'package:varadero/contantes/contantes.dart';
import '../Widget/appBar.dart';

import '../Widget/ovalo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: khomebodycolor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            Expanded(
              flex: 1,
              child: SizedBox(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
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
            ),
            Expanded(
              flex: 12,
              child: SizedBox(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, index) {
                    return const HotelCard();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const Navbar(),
    );
  }
}
