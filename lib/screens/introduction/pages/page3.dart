import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ms_undraw/ms_undraw.dart';

class IntroPage3 extends StatefulWidget {
  @override
  _IntroPage3State createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
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
            illustration: UnDrawIllustration.medicine,
            placeholder: SpinKitDoubleBounce(
              color: kPrimaryColor,
              size: 50,
            ),
            errorWidget: Icon(Icons.error_outline, color: Colors.red, size: 50),
          ),
          Text(
            "سالم باشید",
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
              "با روش های پیشگیری آنتی کرونا، از ویروس کرونا دور بمانید",
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
