import 'package:coronavirus/screens/base/pages/statistics/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class StatisticsBox2 extends StatefulWidget {
  String title;
  String state;
  Color backgroundColor;
  Color textColor;
  EdgeInsets margin;
  double width;
  int index;
  StatisticsBox2(
      {@required this.title,
      @required this.state,
      @required this.backgroundColor,
      @required this.textColor,
      @required this.margin,
      @required this.width,
      @required this.index});

  @override
  _StatisticsBox2State createState() => _StatisticsBox2State();
}

class _StatisticsBox2State extends State<StatisticsBox2> {
  final StatisticsPageController statisticsController =
      Get.put(StatisticsPageController());
  String title;
  String state;
  Color backgroundColor;
  Color textColor;
  EdgeInsets margin;
  double width;
  int index;

  double _opacity;
  int _animationSpeed;
  @override
  void initState() {
    super.initState();
    title = widget.title;
    state = widget.state;
    backgroundColor = widget.backgroundColor;
    textColor = widget.textColor;
    margin = widget.margin;
    width = widget.width;
    index = widget.index;

    if (!statisticsController.animationCompleted) {
      _opacity = 0;
      _animationSpeed = 350;
      animationController();
    } else {
      _opacity = 1;
      _animationSpeed = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: Duration(milliseconds: 750),
      child: Container(
        margin: margin,
        height: 100,
        width: width,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 5),
                  child: Text(
                    title,
                    style: TextStyle(color: textColor, fontSize: 22.5),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5),
                  child: Text(
                    state,
                    style: TextStyle(color: textColor, fontSize: 21),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  animationController() async {
    await Future.delayed(Duration(milliseconds: _animationSpeed * index));

    setState(() {
      _opacity = 1;
    });
    if (index == 4) {
      Get.find<StatisticsPageController>()
          .updateState(newAnimationCompleted: true);
    }
  }
}
