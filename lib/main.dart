import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:varadero/provaiders/navProvaider.dart';
import 'package:varadero/screens/comprar_paquetes.dart';
import 'package:varadero/screens/home.dart';
import 'package:varadero/screens/login.dart';
import 'package:varadero/screens/principal.dart';
import 'package:varadero/screens/registro.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoginProvider(),
          lazy: true,
        ),
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/register', page: () => const RegisterPage()),
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/paquetes', page: () => const ComprarPaquetesPage()),
        GetPage(name: '/principal', page: () => const Principal()),
      ],
      initialRoute: '/principal',
    );
  }
}
