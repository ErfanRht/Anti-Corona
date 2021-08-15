import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff018583);
const kSecondaryColor = Color(0xff00A8A8);
const kBackgroundColor = Color(0xffFFFFFF);

class PrimaryColor extends MaterialStateColor {
  const PrimaryColor() : super(_defaultColor);

  static const int _defaultColor = 0xff018583;
  static const int _pressedColor = 0xff018583;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return const Color(_pressedColor);
    }
    return const Color(_defaultColor);
  }
}
