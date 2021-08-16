import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class IntroPage4 extends StatefulWidget {
  @override
  _IntroPage4State createState() => _IntroPage4State();
}

class _IntroPage4State extends State<IntroPage4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UnDraw(
            color: kPrimaryColor,
            height: MediaQuery.of(context).size.width - 150,
            width: MediaQuery.of(context).size.width - 100,
            illustration: UnDrawIllustration.mobile_application,
            placeholder: Text("...تصویر درحال بارگذاری است"),
            errorWidget: Icon(Icons.error_outline, color: Colors.red, size: 50),
          ),
          Text(
            "بزن بریم",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 27.5,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: Text(
              " توسعه داده شده توسط عرفان رحمتی از دبیرستان سیدالشهدا منطقه 8",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.withOpacity(0.7),
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
