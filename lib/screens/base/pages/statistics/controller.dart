import 'package:coronavirus/constants/types.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsPageController extends GetxController {
  StatisticsTabs selectedTab = StatisticsTabs.IRAN;
  bool animationCompleted = false;

  updateState({StatisticsTabs newTab, bool newAnimationCompleted}) {
    selectedTab = newTab != null ? newTab : selectedTab;
    animationCompleted = newAnimationCompleted != null
        ? newAnimationCompleted
        : animationCompleted;
    update();
  }
}
