import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.white,
        child: SpinKitFadingCircle(
      color: Color(0xFF6F35A5),
      size: 35,
    ));
  }
}
