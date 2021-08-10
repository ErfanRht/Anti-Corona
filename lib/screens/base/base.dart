import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/base-controller.dart';
import 'package:coronavirus/screens/base/pages/home/home.dart';
import 'package:coronavirus/screens/base/pages/settings/settings.dart';
import 'package:coronavirus/screens/base/pages/statistics/statistics.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Base extends StatelessWidget {
  final BaseController baseController = Get.put(BaseController());
  final List _body = [
    SettingsScreen(),
    HomeScreen(),
    StatisticsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: kPrimaryColor,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light));
    return GetBuilder<BaseController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: _body.elementAt(_.currentPage),
          bottomNavigationBar: CurvedNavigationBar(
            height: 75,
            index: 1,
            animationDuration: Duration(milliseconds: 500),
            backgroundColor: kBackgroundColor,
            color: kPrimaryColor,
            items: <Widget>[
              Icon(
                Icons.settings_rounded,
                size: 29,
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
