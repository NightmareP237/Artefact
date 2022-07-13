import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:artefact/Signup/signup_screen.dart';
import 'package:artefact/components/already_have_an_account_acheck.dart';
import 'package:artefact/components/rounded_button.dart';
import 'package:artefact/components/rounded_input_field.dart';
import 'package:artefact/components/rounded_password_field.dart';
import '../../constants.dart';
import 'background.dart';

class Bod extends StatefulWidget {
  const Bod({
    Key? key,
  }) : super(key: key);

  @override
  State<Bod> createState() => _BodState();
}

class _BodState extends State<Bod> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    final GlobalKey<FormFieldState<dynamic>> _formSignupKey =
        GlobalKey<FormFieldState>();
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "CONNECTION",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextField(
                  // key: _formSignupKey,
                  obscureText: true,
                  controller: email,
                  autofocus: true,
                  // onChanged: widget.onChanged,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.mail,
                      color: kPrimaryColor,
                    ),
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(29),
                ),
                child: TextFormField(
                  obscureText: true,
                  // onChanged: onChanged,
                  // validator: (value) {
                  //   (value!.isEmpty) ? "champs vide" : null;
                  // },
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
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: ElevatedButton(
                      child: Text(
                        "Connection",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (pass.text.isEmpty) {
                          if (email.text.isEmpty) {
                            if (pass.text.isEmpty) {
                              showDialog(
                                  context: context,
                                  builder: (_) => SimpleDialog(
                                        title: Text(
                                          "Attention",
                                          style: TextStyle(
                                              color: Color(0xFF6F35A5)),
                                        ),
                                        children: [
                                          Center(
                                              child: Text(
                                                  "Champs vides veuilez les remplirs !")),
                                        ],
                                        alignment: Alignment.center,
                                      ));
                            }
                          }
                        } else {
                          print("welcome to homepage stadium");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF6F35A5),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          textStyle: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    )),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(),
            ],
          ),
        ),
      ),
    );
  }
}
