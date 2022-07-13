import 'package:artefact/components/rounded_button.dart';
import 'package:artefact/components/rounded_input_field.dart';
import 'package:artefact/components/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../constants.dart';
import 'compo/background.dart';
import 'compo/body.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              TextFieldContainer(),
              SizedBox(height: size.height * 0.05),
              RoundedInputField(),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "LOGIN",
                press: null
              ),
              // RoundedButton(
              //   text: "SIGN UP",
              //   color: kPrimaryLightColor,
              //   textColor: Colors.black,
              //   press: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) {
              //           return SignUpScreen();
              //         },
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
