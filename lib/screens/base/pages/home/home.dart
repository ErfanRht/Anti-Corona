import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/pages/home/app-bar.dart';
import 'package:coronavirus/screens/base/pages/home/prevention.dart';
import 'package:coronavirus/screens/base/pages/home/state.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [HomeAppBar(), HomePrevention(), HomeState()],
      ),
    );
  }
}
