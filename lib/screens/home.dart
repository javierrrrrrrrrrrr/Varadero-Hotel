import 'package:flutter/material.dart';
import 'package:varadero/Widget/hotel_card.dart';
import 'package:varadero/contantes/contantes.dart';
import '../Widget/appBar.dart';

import '../Widget/custom_pill.dart';

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
                    children: const [
                      CustomPill(label: 'Precio', width: 60),
                      CustomPill(label: 'Estrellas', width: 75),
                      CustomPill(label: 'Cantidad de dias', width: 120),
                      CustomPill(label: 'Otros', width: 50),
                    ],
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 12,
              child: HotelCardList(),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const Navbar(),
    );
  }
}

class HotelCardList extends StatelessWidget {
  const HotelCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (BuildContext context, index) {
        return const HotelCard();
      },
    );
  }
}
