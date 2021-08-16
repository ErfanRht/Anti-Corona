import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/models/set-system-ui-overlay-style.dart';
import 'package:coronavirus/screens/base/pages/home/app-bar/app-bar.dart';
import 'package:coronavirus/screens/base/pages/home/controller.dart';
import 'package:coronavirus/screens/base/pages/home/prevention/prevention.dart';
import 'package:coronavirus/screens/base/pages/home/state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    setSystemUIOverlayStyle(systemUIOverlayStyle: SystemUIOverlayStyle.DARK);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [HomeAppBar(), HomePrevention(), HomeState()],
      ),
    );
  }
}
