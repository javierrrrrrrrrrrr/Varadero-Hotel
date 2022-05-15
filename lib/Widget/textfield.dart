import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:varadero/contantes/contantes.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.icon,
    required this.hintext,
    required this.onChanged,
    this.validator,
    required this.keyboardType,
    this.contentPadding,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final Widget? icon;
  final String hintext;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    BorderRadius _borderRadius = BorderRadius.all(
      Radius.circular(Get.width * 0.02),
    );

    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        prefixIconColor: kcolorInputPrefixIcon,
        prefixIcon: icon,
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
