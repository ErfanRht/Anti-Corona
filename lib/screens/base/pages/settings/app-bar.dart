import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 125,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25))),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 50),
            child: Text("تنظیمات",
                style: TextStyle(color: Colors.white, fontSize: 30)),
          )
        ],
      ),
    );
  }
}
