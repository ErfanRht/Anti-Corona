import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/pages/statistics/app-bar/switch-tabs.dart';
import 'package:coronavirus/screens/base/pages/statistics/app-bar/total-statistics.dart';
import 'package:flutter/material.dart';

class StatisticsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 480,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30))),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'آمار ویروس کرونا',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27.5,
                  ),
                ),
              ],
            ),
          ),
          StatisticsSwitchTabs(),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Center(
              child: Text(
                "آمار کل :",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          TotalStatistics(),
        ],
      ),
    );
  }
}
