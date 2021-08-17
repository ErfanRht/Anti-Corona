import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ms_undraw/ms_undraw.dart';

class IntroPage2 extends StatefulWidget {
  @override
  _IntroPage2State createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
            illustration: UnDrawIllustration.visual_data,
            placeholder: SpinKitDoubleBounce(
              color: kPrimaryColor,
              size: 50,
            ),
            errorWidget: Icon(Icons.error_outline, color: Colors.red, size: 50),
          ),
          Text(
            "به روز باشید",
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
              "با آنتی کرونا از آمار لحظه ای کرونا در ایران و جهان باخبر خواهید شد",
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
