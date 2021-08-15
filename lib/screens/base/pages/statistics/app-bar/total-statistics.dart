import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/controllers/corona-statistics.dart';
import 'package:coronavirus/screens/base/pages/statistics/controller.dart';
import 'package:coronavirus/widgets/statistics-box.dart';
import 'package:coronavirus/widgets/statistics-box2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalStatistics extends StatelessWidget {
  final StatisticsController statistics = Get.put(StatisticsController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<StatisticsPageController>(builder: (_) {
      return showTotalStatistics(context, _.selectedTab);
    });
  }

  Widget showTotalStatistics(BuildContext context, StatisticsTabs selectedTab) {
    print(selectedTab);
    switch (selectedTab) {
      case (StatisticsTabs.IRAN):
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatisticsBox(
                  title: "مبتلایان :",
                  state: statistics.iranTotalCases,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.only(right: 10),
                  width: (MediaQuery.of(context).size.width - 30) / 2,
                  index: 1,
                ),
                StatisticsBox(
                  title: "فوتی ها :",
                  state: statistics.iranTotalDeaths,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.only(left: 10),
                  width: (MediaQuery.of(context).size.width - 30) / 2,
                  index: 1,
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
                  state: statistics.iranSeriousCases,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.only(right: 10),
                  width: (MediaQuery.of(context).size.width - 40) / 3,
                  index: 2,
                ),
                StatisticsBox(
                  title: "درحال حاضر :",
                  state: statistics.iranActiveCases,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.zero,
                  width: (MediaQuery.of(context).size.width - 40) / 3,
                  index: 2,
                ),
                StatisticsBox(
                  title: "بهبود یافتگان :",
                  state: statistics.iranTotalRecovered,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.only(left: 10),
                  width: (MediaQuery.of(context).size.width - 40) / 3,
                  index: 2,
                )
              ],
            ),
          ],
        );
        break;
      case (StatisticsTabs.WORLD):
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatisticsBox2(
                  title: "مبتلایان :",
                  state: statistics.globalTotalCases,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.only(right: 10),
                  width: (MediaQuery.of(context).size.width - 30) / 2,
                  index: 1,
                ),
                StatisticsBox2(
                  title: "فوتی ها :",
                  state: statistics.globalTotalDeaths,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.only(left: 10),
                  width: (MediaQuery.of(context).size.width - 30) / 2,
                  index: 1,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatisticsBox2(
                  title: "بدحال :",
                  state: statistics.globalSeriousCases,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.only(right: 10),
                  width: (MediaQuery.of(context).size.width - 40) / 3,
                  index: 2,
                ),
                StatisticsBox2(
                  title: "درحال حاضر :",
                  state: statistics.globalActiveCases,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.zero,
                  width: (MediaQuery.of(context).size.width - 40) / 3,
                  index: 2,
                ),
                StatisticsBox2(
                  title: "بهبود یافتگان :",
                  state: statistics.globalTotalRecovered,
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                  margin: EdgeInsets.only(left: 10),
                  width: (MediaQuery.of(context).size.width - 40) / 3,
                  index: 2,
                )
              ],
            ),
          ],
        );
      default:
    }
  }
}
