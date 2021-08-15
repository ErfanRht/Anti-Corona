import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatefulWidget {
  @override
  _IntroPage1State createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/app-logo.jpg',
            height: MediaQuery.of(context).size.width / 1.5,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "به آنتی کرونا خوش آمدید",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 27.5,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "اپی قوی با قابلیت های فراوان",
            style: TextStyle(
              color: Colors.grey.withOpacity(0.7),
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
