import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/controllers/corona-statistics.dart';
import 'package:coronavirus/screens/base/pages/statistics/controller.dart';
import 'package:coronavirus/widgets/statistics-box.dart';
import 'package:coronavirus/widgets/statistics-box2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsBody extends StatelessWidget {
  final StatisticsController statistics = Get.put(StatisticsController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<StatisticsPageController>(builder: (_) {
      return Container(
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          child: showNewStatistics(context, _.selectedTab));
    });
  }

  Widget showNewStatistics(BuildContext context, StatisticsTabs selectedTab) {
    switch (selectedTab) {
      case (StatisticsTabs.IRAN):
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
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
                  state: statistics.iranNewCases,
                  backgroundColor: kPrimaryColor,
                  textColor: Colors.white,
                  margin: EdgeInsets.only(right: 10),
                  width: (MediaQuery.of(context).size.width - 30) / 2,
                  index: 3,
                ),
                StatisticsBox(
                  title: "فوتی ها :",
                  state: statistics.iranNewDeaths,
                  backgroundColor: kPrimaryColor,
                  textColor: Colors.white,
                  margin: EdgeInsets.only(left: 10),
                  width: (MediaQuery.of(context).size.width - 30) / 2,
                  index: 3,
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
                  index: 4,
                ),
              ],
            ),
          ],
        );

        break;
      case (StatisticsTabs.WORLD):
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
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
                StatisticsBox2(
                  title: "مبتلایان :",
                  state: statistics.globalNewCases,
                  backgroundColor: kPrimaryColor,
                  textColor: Colors.white,
                  margin: EdgeInsets.only(right: 10),
                  width: (MediaQuery.of(context).size.width - 30) / 2,
                  index: 3,
                ),
                StatisticsBox2(
                  title: "فوتی ها :",
                  state: statistics.globalNewDeaths,
                  backgroundColor: kPrimaryColor,
                  textColor: Colors.white,
                  margin: EdgeInsets.only(left: 10),
                  width: (MediaQuery.of(context).size.width - 30) / 2,
                  index: 3,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StatisticsBox2(
                  title: "بهبود یافتگان :",
                  state: "26,911",
                  backgroundColor: kPrimaryColor,
                  textColor: Colors.white,
                  margin: EdgeInsets.zero,
                  width: (MediaQuery.of(context).size.width - 20),
                  index: 4,
                ),
              ],
            ),
          ],
        );
      default:
    }
  }
}
