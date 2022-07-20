import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:artefact/Welcome/welcome_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:artefact/constants.dart';
import 'package:artefact/widgets/showandnavigate.dart';

class splash extends StatefulWidget {
  @override
  const splash({Key? key}) : super(key: key);
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      nav(WelcomeScreen(), context, close: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * .275,
              height: size.height * .15,
              child: SvgPicture.asset("assets/icons/artefact.svg"),
            ),
            LoadingAnimationWidget.flickr(
              leftDotColor: kPrimaryColor,
              rightDotColor: kPrimaryColor,
              size: size.height * .06,
              
            ),
            Text("A R T E F A C T",style: TextStyle(fontWeight:FontWeight.w700))
          ],
        ),
      ),
    );
  }
}
