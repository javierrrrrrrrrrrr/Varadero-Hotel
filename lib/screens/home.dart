import 'package:flutter/material.dart';
import 'package:varadero/Widget/hotel_card.dart';
import 'package:varadero/contantes/contantes.dart';
import '../Widget/appBar.dart';

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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: const [
                      Chip(
                        side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        padding: EdgeInsets.all(8),
                        label: Text('Precio', style: kChipsTextStyle),
                        backgroundColor: kChipBackgroundColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        padding: EdgeInsets.all(8),
                        label: Text('Estrellas', style: kChipsTextStyle),
                        backgroundColor: kChipBackgroundColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        padding: EdgeInsets.all(8),
                        label: Text('Cantidad de dias', style: kChipsTextStyle),
                        backgroundColor: kChipBackgroundColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        padding: EdgeInsets.all(8),
                        label: Text('Otros', style: kChipsTextStyle),
                        backgroundColor: kChipBackgroundColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Chip(
                        side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        padding: EdgeInsets.all(8),
                        label: Text('Otros', style: kChipsTextStyle),
                        backgroundColor: kChipBackgroundColor,
                      ),
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
