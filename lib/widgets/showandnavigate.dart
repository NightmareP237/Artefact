import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

emailverification(BuildContext context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
            title: Row(
              children: [
                Text(
                  'Error',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: Palette.epais),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.error_sharp,
                  size: 18,
                  color: Colors.red,
                )
              ],
            ),
            content: RichText(
                text: TextSpan(
                    text:
                        ' Svp,Veuillez entrer une adresse Email valide respectant les normes tel que: ',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    children: [
                  TextSpan(
                      text: 'exampleIntery@gmail.com',
                      style: TextStyle(color: Colors.red.shade400))
                ])),
            actions: [
              MaterialButton(
                onPressed: () async {
                  Navigator.pop(context);
                },
                textColor: kPrimaryColor,
                splashColor: kPrimaryColor,
                child: Text(
                  'OK',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ]));
error(BuildContext context, String message, String titre, Size size) =>
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                title: Row(
                  children: [
                    Text(
                      titre.toString(),
                      style: TextStyle(
                          color: Palette.delete,
                          fontSize: 18,
                          fontWeight: Palette.epais),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.error_sharp,
                      size: 18,
                      color: Palette.delete,
                    )
                  ],
                ),
                content: Container(
                  height: size.height * 0.15,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/signal.svg",
                        height: size.height * 0.12,
                      ),
                      Text(
                        message.toString(),
                      ),
                    ],
                  ),
                ),
                actions: [
                  MaterialButton(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    textColor: kPrimaryColor,
                    splashColor: kPrimaryColor,
                    child: Text(
                      'OK',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ]));
void nav(Widget navigate, BuildContext context, {bool close = false}) {
  close
      ? Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => navigate), (route) => false)
      : Navigator.push(
          context, MaterialPageRoute(builder: (context) => navigate));
}
