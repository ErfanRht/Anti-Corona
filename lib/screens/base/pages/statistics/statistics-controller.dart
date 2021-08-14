import 'package:coronavirus/constants/types.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsPageController extends GetxController {
  StatisticsTabs selectedTab = StatisticsTabs.IRAN;

  updateState({StatisticsTabs newTab}) {
    selectedTab = newTab != null ? newTab : selectedTab;
    update();
  }
}
