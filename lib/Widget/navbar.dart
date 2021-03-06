import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/controllers/pricipal_controller.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final principalController = Get.find<PrincipalController>();
    return CurvedNavigationBar(
      index: principalController.index.value,
      height: 50,
      color: const Color.fromRGBO(80, 134, 193, 1),
      //buttonBackgroundColor: Colors.black,
      backgroundColor: Colors.white,
      items: const <Widget>[
        Icon(
          Icons.add_box,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.house,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        principalController.index.value = index;
      },
    );

    //BottomNavigationBar(
    //     selectedItemColor: Colors.white,
    //     unselectedItemColor: Colors.white,
    //     backgroundColor: const Color.fromRGBO(80, 134, 193, 1),
    //     onTap: (int i) => 1,
    //     currentIndex: 1,
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.add_box,
    //           color: Colors.white,
    //         ),
    //         label: 'Comprar pquete',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.house,
    //           color: Colors.white,
    //         ),
    //         label: 'Home',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(
    //           Icons.search,
    //           color: Colors.white,
    //         ),
    //         label: 'Buscar,',
    //       )
    //     ],
    //   );
    // }
  }

  NavegacionRuta() {}
}
