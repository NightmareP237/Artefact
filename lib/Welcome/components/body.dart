import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:artefact/Login/compo/body.dart';
import 'package:artefact/Signup/components/body.dart';
import 'package:artefact/Signup/signup_screen.dart';
import 'package:artefact/components/rounded_button.dart';
import '../../../constants.dart';
import 'background.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO SKUL",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
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
                    onPressed: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Bod())),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF6F35A5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        textStyle: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  )),
            ),
            // RoundedButton(text: "LOGIN", press: null),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: ElevatedButton(
                    child: Text(
                      "Inscription",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    onPressed: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Boy())),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF1E6FF),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        textStyle: TextStyle(
                            color: kPrimaryLightColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
