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
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            height: Get.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.25,
                  width: Get.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        RaitingBar(
                          tamano: 18,
                          separacion: 0,
                        ),
                        /**  uso es simbolo para lograr que reconozca el simbolo de peso como un caracter */
                        Text(
                          '  \$ 4000 Cup',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Blau Resort',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
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
