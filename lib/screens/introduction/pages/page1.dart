import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class IntroPage1 extends StatefulWidget {
  @override
  _IntroPage1State createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          UnDraw(
            color: kPrimaryColor,
            illustration: UnDrawIllustration.around_the_world,
            placeholder: Text("...تصویر درحال بارگذاری است"),
            errorWidget: Icon(Icons.error_outline, color: Colors.red, size: 50),
          )
        ],
      ),
    );
  }
}
