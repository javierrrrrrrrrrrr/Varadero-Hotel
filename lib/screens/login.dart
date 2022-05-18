import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:varadero/Widget/textfield.dart';
import 'package:varadero/controllers/login_controller.dart';
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

class LoginBody extends StatefulWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final loginController = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Esta es la key del form
    final formKey = GlobalKey<FormState>();

    return FutureBuilder<Object>(
        future: loginController.loadSessionSaved(),
        builder: (context, AsyncSnapshot<Object> snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: Get.height * 0.6,
              margin: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    InputField(
                      initialValue: loginController.username.value,
                      onChanged: (value) =>
                          loginController.username.value = value,
                      validator: (value) {
                        bool isUsername = GetUtils.isUsername(value!);
                        return isUsername
                            ? null
                            : 'Debe entrar un username valido';
                      },
                      icon: const Icon(Icons.person),
                      hintext: "Usuario",
                      keyboardType: TextInputType.text,
                    ),
                    //Falta Arreglar todos los tamanos de la pagina para que se adapte a los dispositivos
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Obx(
                      () => InputField(
                        initialValue: loginController.remindedPass.value,

                        suffixIcon: loginController.password.value.isEmpty
                            ? null
                            : IconButton(
                                onPressed: () {
                                  loginController.isPasswordVisible.value =
                                      !loginController.isPasswordVisible.value;
                                },
                                icon: loginController.isPasswordVisible.value
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                              ),
                        obscureText: loginController.isPasswordVisible.value,
                        icon: const Icon(Icons.lock_open),
                        hintext: "Contraseña",
                        keyboardType: TextInputType.text,
                        onChanged: (value) =>
                            loginController.password.value = value,
                        // validator: (value) {
                        //   bool isBlank = GetUtils.isBlank(value)!;
                        //   bool isGraterThan = GetUtils.isLengthGreaterThan(value, 6);

                        //   if (isBlank == true || isGraterThan == false) {
                        //     return 'La password es incorrecta';
                        //   }
                        //   return null;
                        // },
                      ),
                    ),
                    const RememberMeSection(),
                    const SizedBox(
                      height: 26,
                    ),
                    LoginButton(formKey: formKey),
                    const SizedBox(
                      height: 93,
                    ),
                    const HasAcountSection()
                  ],
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
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
    required this.formKey,
  }) : super(key: key);
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final loginController = Get.find<LoginController>();
    return GestureDetector(
      child: const ButtomAcept(text: "Iniciar"),
      onTap: () async {
        final SharedPreferences prefs = await _prefs;
        if (formKey.currentState!.validate()) {
          FocusScope.of(context).unfocus();
          showDialog(
              context: context,
              builder: (context) {
                return const SpinKitFadingCircle(
                  color: Colors.blue,
                  size: 50,
                );
              });
          bool seLogueo = await loginController.loginUser(
            loginController.username.value,
            loginController.password.value,
          );
          if (loginController.isRemeberCheck.value == true) {
            loginController.remindedPass.value = loginController.password.value;
            prefs.setString('pass', loginController.password.value);
            prefs.setString('username', loginController.username.value);
          } else {
            loginController.remindedPass.value = '';
            prefs.setString('pass', '');
            prefs.setString('username', '');
          }
          if (seLogueo) {
            Navigator.pop(context);
            Get.toNamed('/principal');
          } else {
            Navigator.pop(context);
          }
          print('El user se logueo: $seLogueo');
        }
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
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final loginController = Get.find<LoginController>();
    return Row(
      children: [
        Obx(() => Checkbox(
              activeColor: Colors.blue,
              value: loginController.isRemeberCheck.value,
              onChanged: (value) async {
                final SharedPreferences prefs = await _prefs;
                loginController.isRemeberCheck.value = value!;
                prefs.setBool('savedSession', value);
              },
            )),
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
