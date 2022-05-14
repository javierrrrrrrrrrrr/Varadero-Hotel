class CustomValidation {
  //Metodo de validacion para que el campo no tenga valores nulos
  String? nullInput({required String value, String? text}) {
    if (value.isEmpty) {
      return text ?? 'Please enter some text';
    }
    return null;
  }

// Validacion para un email requerido
  String? emailInput({required String value, String? text}) {
    String gmailpatter =
        r'^(([^<>()[]\.,;:\s@"]+(.[^<>()[]\.,;:\s@"]+)*)|(".+"))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(gmailpatter);
    if (regExp.hasMatch(value) == true) {
      return null;
    } else {
      return 'Introduce un correo valido';
    }
  }

  // Metodo para valiacion que solo sean numeros
  String? numberInput({required String value, String? text}) {
    if (value.isEmpty) {
      return text ?? 'Please enter some text';
    }
    if (value.contains(RegExp(r'[a-zA-Z]'))) {
      return 'Please enter only numbers';
    }
    return null;
  }
}
