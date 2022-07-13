import 'package:flutter/material.dart';
import 'package:artefact/Login/compo/body.dart';
import 'package:artefact/Signup/components/body.dart';

import '../constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login
              ? "N'avez-vous pas de compte ? "
              : "Avez-vous deja un compte ? ",
          style: TextStyle(color: kPrimaryColor),
        ),
        TextButton(
          child: Text(
            login ? "S'Inscrire" : "Se Connecter",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => login
              ? Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Boy()))
              : Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Bod())),
        )
      ],
    );
  }
}
