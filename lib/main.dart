import 'package:artefact/spalshscreen/splash.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
          home: Scaffold(body: splash())));
  }
}
