import 'package:flutter/material.dart';
import 'package:artefact/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController?p;
  const RoundedPasswordField({
    Key? key,
    this.onChanged,
    this.p
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        onChanged: onChanged,
        validator: (value) => "champs vide" ,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Mot de passe",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
