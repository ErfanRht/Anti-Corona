import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/base-controller.dart';
import 'package:coronavirus/screens/base/pages/about/about.dart';
import 'package:coronavirus/screens/base/pages/home/home.dart';
import 'package:coronavirus/screens/base/pages/statistics/statistics.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Base extends StatelessWidget {
  final BaseController baseController = Get.put(BaseController());
  final List _body = [
    AboutScreen(),
    HomeScreen(),
    StatisticsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: _body.elementAt(_.currentPage),
          bottomNavigationBar: CurvedNavigationBar(
            height: 70,
            index: _.currentPage,
            animationDuration: Duration(milliseconds: 500),
            backgroundColor: kBackgroundColor,
            color: kPrimaryColor,
            items: <Widget>[
              Icon(
                Icons.data_usage_rounded,
                size: 34,
                color: Colors.white,
              ),
              Icon(
                Icons.home_rounded,
                size: 32,
                color: Colors.white,
              ),
              Icon(
                Icons.bar_chart_rounded,
                size: 40,
                color: Colors.white,
              ),
            ],
            onTap: (index) {
              Get.find<BaseController>().updateBase(newCurrentPage: index);
            },
          ),
        );
      },
    );
  }
}
