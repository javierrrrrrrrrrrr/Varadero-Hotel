import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/textfield.dart';
import 'package:varadero/contantes/contantes.dart';
import 'package:varadero/controllers/login_controller.dart';
import 'package:varadero/models/users/user.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:varadero/utils/validation.dart';

import '../Widget/butomAcept.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user = User();

    final loginController = Get.put(LoginController());
    final _formKey = GlobalKey<FormState>();
    final validator = CustomValidation();
    return Scaffold(
      backgroundColor: khomebodycolor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Column(
            children: [
              const Flexible(
                child: _PictureHeaderSection(),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.07,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        InputField(
                          hintext: "Nombre",
                          onChanged: (value) {
                            user.name = value;
                          },
                          validator: (value) =>
                              validator.nullInput(value: value!),
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.text,
                        ),
                        separador(),
                        InputField(
                          hintext: "Nombre de Usuario",
                          validator: (value) =>
                              validator.nullInput(value: value!),
                          onChanged: (value) {
                            user.username = value;
                            print(user.username);
                          },
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.text,
                        ),
                        separador(),
                        InputField(
                          hintext: "Contraseña",
                          validator: (value) =>
                              validator.nullInput(value: value!),
                          onChanged: (value) {
                            user.password = value;
                          },
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.text,
                        ),
                        separador(),
                        InputField(
                          hintext: "Numero de telefono",
                          validator: (value) =>
                              validator.numberInput(value: value!),
                          onChanged: (value) {
                            user.phoneNumber = value;
                          },
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.number,
                        ),
                        separador(),
                        InputField(
                          hintext: "Email",
                          validator: (value) => validator.emailInput(
                              value: value!, text: "Entra un email valido"),
                          onChanged: (value) {
                            user.email = value;
                          },
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: Get.height * 0.1,
                        ),
                        ButtomAcept(
                          text: "Comenzar",
                          height: Get.height * 0.07,
                          width: Get.width,
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              FocusScope.of(context).unfocus();
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const SpinKitFadingCircle(
                                      color: Colors.blue,
                                      size: 50,
                                    );
                                  });
                              bool registered =
                                  await loginController.registerUser(user);
                              if (registered) {
                                Navigator.pop(context);
                                Get.toNamed('/login');
                              } else {
                                Navigator.pop(context);
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // String? nameInput(String value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter some text';
  //   }
  //   return null;
  // }

  SizedBox separador() {
    return SizedBox(
      height: Get.height * 0.025,
    );
  }
}

class Spinner extends StatelessWidget {
  const Spinner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitRotatingCircle(
      color: Colors.blue,
      size: 50.0,
    );
  }
}

class _PictureHeaderSection extends StatelessWidget {
  const _PictureHeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Get.width * 0.2,
      ),
      child: Image.asset(
        'assets/foto1.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
