import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:artefact/Login/login_screen.dart';
import 'package:artefact/Signup/components/social_icon.dart';
import 'package:artefact/components/already_have_an_account_acheck.dart';
import 'package:artefact/components/rounded_button.dart';
import 'package:artefact/components/rounded_input_field.dart';
import 'package:artefact/components/rounded_password_field.dart';
import 'package:artefact/home/homepage.dart';
import 'package:artefact/widgets/loading.dart';
import 'package:artefact/widgets/showandnavigate.dart';
import 'package:artefact/widgets/spinhome.dart';
import '../../constants.dart';
import 'background.dart';
import 'or_divider.dart';

class Boy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    TextEditingController name = TextEditingController();
    bool internet = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Inscription".toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
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
                  // key: _formSignupKey,
                  controller: name,
                  // onChanged: widget.onChanged,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    hintText: "Utilisateur",
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
                  // key: _formSignupKey,
                  controller: email,
                  // onChanged: widget.onChanged,
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.mail,
                      color: kPrimaryColor,
                    ),
                    hintText: "Addresse Email",
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
                  // obscureText: true,
                  controller: pass,
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
                        "Inscription",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if (name.text.isEmpty &&
                            email.text.isEmpty &&
                            pass.text.isEmpty) {
                          warning(context);
                        } else {
                          // if (name.text.isNotEmpty &&
                          //     email.text.isNotEmpty &&

                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(email.text)) {
                            emailverification(context);
                          } else {
                            internet =
                                await InternetConnectionChecker().hasConnection;
                            if (!internet) {
                              error(
                                  context,
                                  'Pas de connection internet, Reessayez !',
                                  "Erreur",
                                  size);
                            } else {
                              chargement(context, size, "Chargement...");
                              print("inscription effectue avec success");
                              nav(homepage(), context, close: true);
                            }
                          }
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
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
