import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/screens/base/pages/statistics/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsSwitchTabs extends StatefulWidget {
  @override
  _StatisticsSwitchTabsState createState() => _StatisticsSwitchTabsState();
}

class _StatisticsSwitchTabsState extends State<StatisticsSwitchTabs> {
  final StatisticsPageController statisticsPage =
      Get.put(StatisticsPageController());

  EdgeInsets selectedMargin;
  StatisticsTabs selectedTab;

  @override
  void initState() {
    super.initState();
    selectedMargin = EdgeInsets.zero;
    selectedTab = statisticsPage.selectedTab;
  }

  @override
  Widget build(BuildContext context) {
    if (selectedTab == StatisticsTabs.WORLD) {
      selectedMargin = EdgeInsets.only(
          right: (MediaQuery.of(context).size.width - 87.5) / 2);
    }
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width - 70,
      height: 60,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF).withOpacity(0.2),
          borderRadius: BorderRadius.circular(50)),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              switchTab();
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      switchTab();
                    },
                    child: AnimatedOpacity(
                      opacity: selectedTab == StatisticsTabs.WORLD ? 1 : 0,
                      duration: Duration(milliseconds: 250),
                      child: Text(
                        "ایران",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      switchTab();
                    },
                    child: AnimatedOpacity(
                      opacity: selectedTab == StatisticsTabs.IRAN ? 1 : 0,
                      duration: Duration(milliseconds: 250),
                      child: Text(
                        "جهان",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  switchTab();
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  margin: selectedMargin,
                  width: (MediaQuery.of(context).size.width - 70) / 2,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Stack(
                      children: [
                        AnimatedOpacity(
                          opacity: selectedTab == StatisticsTabs.WORLD ? 1 : 0,
                          duration: Duration(milliseconds: 50),
                          child: Text(
                            "جهان",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: selectedTab == StatisticsTabs.IRAN ? 1 : 0,
                          duration: Duration(milliseconds: 50),
                          child: Text(
                            "ایران",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  switchTab() {
    if (selectedTab == StatisticsTabs.IRAN) {
      setState(() {
        selectedTab = StatisticsTabs.WORLD;
        selectedMargin = EdgeInsets.only(
            right: (MediaQuery.of(context).size.width - 87.5) / 2);
      });
    } else if (selectedTab == StatisticsTabs.WORLD) {
      setState(() {
        selectedTab = StatisticsTabs.IRAN;
        selectedMargin = EdgeInsets.zero;
      });
    }
    Get.find<StatisticsPageController>()
        .updateState(newTab: selectedTab, newAnimationCompleted: false);
  }
}
