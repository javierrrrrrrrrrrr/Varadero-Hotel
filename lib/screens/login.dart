import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/textfield.dart';
import 'package:varadero/screens/principal.dart';
import '../Widget/butomAcept.dart';
import '../contantes/contantes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: khomebodycolor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              LoginPictureHeader(),
              LoginBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.6,
      margin: EdgeInsets.symmetric(
        horizontal: Get.width * 0.05,
      ),
      child: Column(
        children: [
          InputField(
            onChanged: (value) {},
            icono: const Icon(Icons.person),
            hintext: "Usuario",
          ),
          //Falta Arreglar todos los tamanos de la pagina para que se adapte a los dispositivos
          SizedBox(
            height: Get.height * 0.02,
          ),
          InputField(
            onChanged: (value) {},
            icono: const Icon(Icons.lock_open),
            hintext: "Contraseña",
          ),
          const RememberMeSection(),
          const SizedBox(
            height: 26,
          ),
          const LoginButton(),
          const SizedBox(
            height: 93,
          ),
          const HasAcountSection()
        ],
      ),
    );
  }
}

class HasAcountSection extends StatelessWidget {
  const HasAcountSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'No tienes cuenta aun',
          style: TextStyle(fontSize: 20),
        ),
        GestureDetector(
          child: const Text('? Registrate', style: kLoginRegisterText),
          onTap: () {
            Get.toNamed('/register');
          },
        )
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const ButtomAcept(text: "Iniciar"),
      onTap: () {
        Get.to(const Principal());
      },
    );
  }
}

class RememberMeSection extends StatelessWidget {
  const RememberMeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Colors.blue,
          value: true,
          onChanged: (value) {},
        ),
        const Text('Recuerdame', style: kremembermeStyle),
        Padding(
          padding: EdgeInsets.only(left: Get.width * 0.15),
          child: const Text(
            'Contraseña olvidada?',
            style:
                TextStyle(color: Color.fromRGBO(80, 134, 193, 1), fontSize: 16),
          ),
        ),
      ],
    );
  }
}

class LoginPictureHeader extends StatelessWidget {
  const LoginPictureHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: Get.width * 0.1,
        left: Get.width * 0.1,
        top: Get.height * 0.05,
      ),
      height: Get.height * 0.4,
      width: Get.width * 0.8,
      child: Image.asset('assets/foto1.jpg'),
    );
  }
}
