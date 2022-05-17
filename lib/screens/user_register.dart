import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/Widget/textfield.dart';
import 'package:varadero/contantes/contantes.dart';
import 'package:varadero/controllers/register_controller.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:varadero/models/users/user.dart';

import '../Widget/butomAcept.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registerController = Get.put(RegisterController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: khomebodycolor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height * 0.92,
          child: Column(
            children: [
              const _PictureHeaderSection(),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.07,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InputField(
                          hintext: "Nombre",
                          onChanged: (value) {
                            registerController.name.value = value;
                          },
                          validator: (value) {
                            bool isNameEmpty = GetUtils.isBlank(value!)!;
                            return isNameEmpty
                                ? 'El campo nombre no debe ser nulo'
                                : null;
                          },
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.text,
                        ),
                        InputField(
                          hintext: "Nombre de Usuario",
                          validator: (value) {
                            bool isUsername = GetUtils.isUsername(value!);
                            return isUsername
                                ? null
                                : 'Debe entrar un username valido';
                          },
                          onChanged: (value) {
                            registerController.username.value = value;
                          },
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.text,
                        ),
                        //Aqui hice aparecer un icono para poder ver las contrasena cuando se toca el boton
                        //Revisar el codigo del Register Controller de la carpeta controllers..
                        Obx(
                          () => InputField(
                            hintext: "Contraseña",
                            suffixIcon:
                                registerController.password.value.isEmpty
                                    ? null
                                    : IconButton(
                                        onPressed: () {
                                          registerController
                                                  .isPasswordVisible.value =
                                              !registerController
                                                  .isPasswordVisible.value;
                                        },
                                        icon: registerController
                                                .isPasswordVisible.value
                                            ? const Icon(Icons.visibility)
                                            : const Icon(Icons.visibility_off),
                                      ),
                            obscureText:
                                registerController.isPasswordVisible.value,
                            validator: (value) {
                              bool isBlank = GetUtils.isBlank(value)!;
                              bool isGraterThan =
                                  GetUtils.isLengthGreaterThan(value, 6);

                              if (isBlank == true || isGraterThan == false) {
                                return 'La password es incorrecta';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              registerController.password.value = value;
                            },
                            icon: const Icon(Icons.person),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        InputField(
                          hintext: "Numero de telefono",
                          validator: (value) {
                            bool isValidNumber = GetUtils.isPhoneNumber(value!);

                            return isValidNumber
                                ? null
                                : 'Debe retornar un email Valido';
                          },
                          onChanged: (value) {
                            //Revisar la validacion para el numero de telefono sea solo integer
                            registerController.phoneNumber.value =
                                int.parse(value);
                          },
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.number,
                        ),
                        InputField(
                          hintext: "Email",
                          validator: (value) {
                            bool isValidEmail = GetUtils.isEmail(value!);
                            return isValidEmail
                                ? null
                                : 'Debe retornar un email Valido';
                          },
                          onChanged: (value) {
                            registerController.email.value = value;
                          },
                          icon: const Icon(Icons.person),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ButtomAcept(
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
                                User user = User(
                                  name: registerController.name.value,
                                  username: registerController.username.value,
                                  email: registerController.email.value,
                                  password: registerController.password.value,
                                  phoneNumber:
                                      registerController.phoneNumber.value,
                                );
                                bool registered =
                                    await registerController.registerUser(user);
                                if (registered) {
                                  Navigator.pop(context);
                                  Get.toNamed('/login');
                                } else {
                                  Navigator.pop(context);
                                }
                              }
                            },
                          ),
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
