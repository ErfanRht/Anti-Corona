import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/controllers/corona-statistics.dart';
import 'package:coronavirus/screens/base/base-controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeState extends StatelessWidget {
  final StatisticsController statisticsController =
      Get.put(StatisticsController());

  @override
  Widget build(BuildContext context) {
    final String iranNewlDeath = statisticsController.iranNewDeaths;
    return InkWell(
      onTap: () {
        Get.find<BaseController>().updateBase(newCurrentPage: 2);
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(top: 25),
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width - 50,
        height: 130,
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Flexible(
                child: Text(
              "در 24 ساعت گذشته $iranNewlDeath هموطن بر اثر کرونا جان باختند.",
              style: TextStyle(color: Colors.white, fontSize: 22.5),
            )),
            Padding(
              padding: EdgeInsets.only(right: 5, top: 5),
              child: Row(
                children: [
                  Text(
                    "برای مشاهده آمار بیشتر کلیک کنید",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 17.5),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
