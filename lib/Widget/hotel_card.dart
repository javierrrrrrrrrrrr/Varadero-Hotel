import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/raitingBar.dart';

import '../screens/hotel_home.dart';
import 'likeButtom.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => Get.to(
            () => const HotelHomePage(),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            height: Get.height * 0.30,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  blurRadius: 4,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 6,
                    left: 6,
                    right: 6,
                  ),
                  height: Get.height * 0.23,
                  width: Get.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    image: const DecorationImage(
                      image: AssetImage('assets/blau.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            ' \$ 4000/noche',
                            style: TextStyle(fontSize: 18),
                          ),
                          RaitingBar(
                            tamano: 18,
                            separacion: 0,
                          ),
                          /**  uso es simbolo para lograr que reconozca el simbolo de peso como un caracter */
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Blau Resort',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 25,
            left: 300,
          ),
          child: LikeButtom(),
        )
      ],
    );
  }
}
