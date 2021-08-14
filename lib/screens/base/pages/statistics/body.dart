import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/widgets/statistics-box.dart';
import 'package:flutter/material.dart';

class StatisticsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 10),
          child: Center(
            child: Text(
              "آمار 24 ساعت گذشته :",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatisticsBox(
              title: "مبتلایان :",
              state: "42,541",
              backgroundColor: kPrimaryColor,
              textColor: Colors.white,
              margin: EdgeInsets.only(right: 10),
              width: (MediaQuery.of(context).size.width - 30) / 2,
            ),
            StatisticsBox(
              title: "فوتی ها :",
              state: "536",
              backgroundColor: kPrimaryColor,
              textColor: Colors.white,
              margin: EdgeInsets.only(left: 10),
              width: (MediaQuery.of(context).size.width - 30) / 2,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatisticsBox(
              title: "بهبود یافتگان :",
              state: "26,911",
              backgroundColor: kPrimaryColor,
              textColor: Colors.white,
              margin: EdgeInsets.zero,
              width: (MediaQuery.of(context).size.width - 20),
            ),
          ],
        ),
      ],
    );
  }
}
