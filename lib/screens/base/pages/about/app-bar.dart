import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';

class AboutAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 40),
            child: Text("علائم ویروس کرونا",
                style: TextStyle(color: Colors.white, fontSize: 27.5)),
          )
        ],
      ),
    );
  }
}
