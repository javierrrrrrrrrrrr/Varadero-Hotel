import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/controllers/pricipal_controller.dart';
import 'package:varadero/screens/menu_paquetes.dart';

import '../Widget/navbar.dart';
import 'home.dart';
import 'hotel_home.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomePageBody(),
      bottomNavigationBar: Navbar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final loginProvaider = Provider.of<LoginProvider>(context);
    final pricipalController = Get.put(PrincipalController());
    return Obx(() {
      switch (pricipalController.index.value) {
        case 0:
          return const MenuPaquetesPage();

        case 1:
          return const HomePage();

        case 2:
          return const HotelHomePage();

        default:
          return const HomePage();
      }
    });
  }
}
