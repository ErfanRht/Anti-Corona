import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      width: MediaQuery.of(context).size.width - 50,
      height: 130,
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
