import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
        left: 20,
        right: 20,
      ),
      height: Get.height * 0.05,
      width: Get.width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(249, 244, 244, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 50,
          right: 20,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Hoteles de varadero',
                style: TextStyle(fontSize: 18),
              ),
              Icon(
                Icons.search,
                color: Colors.blue,
              ),
            ]),
      ),
    );
  }
}
