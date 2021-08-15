import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/pages/statistics/app-bar/app-bar.dart';
import 'package:coronavirus/screens/base/pages/statistics/body/body.dart';
import 'package:coronavirus/screens/base/pages/statistics/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsScreen extends StatelessWidget {
  final StatisticsPageController statisticsController =
      Get.put(StatisticsPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          StatisticsAppBar(),
          StatisticsBody(),
          Flexible(
              child: Container(
            color: Colors.white,
          ))
        ],
      ),
    );
  }
}
