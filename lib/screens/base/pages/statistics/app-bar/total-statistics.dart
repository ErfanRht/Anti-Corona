import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/widgets/statistics-box.dart';
import 'package:flutter/material.dart';

class TotalStatistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatisticsBox(
              title: "مبتلایان :",
              state: "4,281,217",
              backgroundColor: Colors.white,
              textColor: kPrimaryColor,
              margin: EdgeInsets.only(right: 10),
              width: (MediaQuery.of(context).size.width - 30) / 2,
            ),
            StatisticsBox(
              title: "فوتی ها :",
              state: "95,647",
              backgroundColor: Colors.white,
              textColor: kPrimaryColor,
              margin: EdgeInsets.only(left: 10),
              width: (MediaQuery.of(context).size.width - 30) / 2,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatisticsBox(
                title: "بدحال :",
                state: "6,932",
                backgroundColor: Colors.white,
                textColor: kPrimaryColor,
                margin: EdgeInsets.only(right: 10),
                width: (MediaQuery.of(context).size.width - 40) / 3),
            StatisticsBox(
                title: "درحال حاضر :",
                state: "567,346",
                backgroundColor: Colors.white,
                textColor: kPrimaryColor,
                margin: EdgeInsets.zero,
                width: (MediaQuery.of(context).size.width - 40) / 3),
            StatisticsBox(
                title: "بهبود یافتگان :",
                state: "3,618,224",
                backgroundColor: Colors.white,
                textColor: kPrimaryColor,
                margin: EdgeInsets.only(left: 10),
                width: (MediaQuery.of(context).size.width - 40) / 3)
          ],
        ),
      ],
    );
  }
}
