import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:varadero/screens/home.dart';
import 'package:varadero/screens/login.dart';
import 'package:varadero/screens/registro.dart';

void main() => runApp(const MyApp());

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
      ],
      initialRoute: '/login',
    );
  }
}
