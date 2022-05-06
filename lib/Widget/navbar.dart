import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: const Color.fromRGBO(80, 134, 193, 1),
      onTap: (int i) => 1,
      currentIndex: 1,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
            color: Colors.white,
          ),
          label: 'Comprar pquete',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.house,
            color: Colors.white,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          label: 'Buscar,',
        )
      ],
    );
  }
}
