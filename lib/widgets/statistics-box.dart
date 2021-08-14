import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';

class StatisticsBox extends StatefulWidget {
  String title;
  String state;
  Color backgroundColor;
  Color textColor;
  EdgeInsets margin;
  double width;
  StatisticsBox(
      {@required this.title,
      @required this.state,
      @required this.backgroundColor,
      @required this.textColor,
      @required this.margin,
      @required this.width});

  @override
  _StatisticsBoxState createState() => _StatisticsBoxState();
}

class _StatisticsBoxState extends State<StatisticsBox> {
  String title;
  String state;
  Color backgroundColor;
  Color textColor;
  EdgeInsets margin;
  double width;
  @override
  void initState() {
    super.initState();
    title = widget.title;
    state = widget.state;
    backgroundColor = widget.backgroundColor;
    textColor = widget.textColor;
    margin = widget.margin;
    width = widget.width;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  state,
                  style: TextStyle(color: textColor, fontSize: 22.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
