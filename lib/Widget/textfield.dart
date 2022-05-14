import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/contantes/contantes.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.icono,
    required this.hintext,
    required this.onChanged,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final Widget? icono;
  final String hintext;

  @override
  Widget build(BuildContext context) {
    BorderRadius _borderRadius =
        BorderRadius.all(Radius.circular(Get.width * 0.02));

    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIconColor: kcolorInputPrefixIcon,
        prefixIcon: icono,
        hintText: hintext,
        border: OutlineInputBorder(
          borderRadius: _borderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: _borderRadius,
          borderSide: const BorderSide(color: kBorderSideColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: _borderRadius,
          borderSide: const BorderSide(
            color: kBorderSideColor,
          ),
        ),
      ),
    );
  }
}
