import 'package:flutter/material.dart';

import '../constants.dart';
import 'loading.dart';


nextix(context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Center(
          child: Container(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
        ));
nexte(context) => showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) => Center(
          child: Container(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
        ));
chargement(BuildContext context, Size size, String txt) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => SimpleDialog(
          title: Center(
            child: Text(
              txt.toString(),
              style: TextStyle(color: Color(0xFF6F35A5)),
            ),
          ),
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.1,
              height: size.width * 0.1,
              decoration: BoxDecoration(
                  // color: kPrimaryLightColor,
                  //   borderRadius:
                  //       BorderRadius.circular(29),
                  ),
              child: Center(
                child: Loading(),
              ),
            )
          ],
          alignment: Alignment.center,
        ));
warning(BuildContext context)=> showDialog(
                              context: context,
                              builder: (_) => SimpleDialog(
                                    title: Text(
                                      "Attention !",
                                      style:
                                          TextStyle(fontWeight: Palette.epais),
                                    ),
                                    children: [
                                      Center(
                                          child: Text(
                                        "Champs vides veuilez les remplir !",
                                        style: TextStyle(color: Palette.delete),
                                      )),
                                    ],
                                    alignment: Alignment.center,
                                  ));