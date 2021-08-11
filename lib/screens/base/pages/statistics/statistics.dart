import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/pages/statistics/app-bar.dart';
import 'package:coronavirus/screens/base/pages/statistics/body.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [StatisticsAppBar(), StatisticsBody()],
      ),
    );
  }
}
