import 'package:coronavirus/constants/routes.dart';
import 'package:coronavirus/screens/loading/logo.dart';
import 'package:coronavirus/screens/loading/spin-kit.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  bool _isDark;
  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    _isDark = brightnessValue == Brightness.dark;
    pass(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          SizedBox(),
          Center(child: LoadingLogo()),
          SizedBox(),
          LoadingSpinkit(),
          SizedBox(),
        ],
      ),
    );
  }

  pass(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacementNamed(context, base_route);
  }
}
