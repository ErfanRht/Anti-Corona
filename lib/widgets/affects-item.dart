import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';

class AffectsItem extends StatefulWidget {
  String text;
  int index;
  AffectsItem({@required this.text, @required this.index});
  @override
  _AffectsItemState createState() => _AffectsItemState();
}

class _AffectsItemState extends State<AffectsItem> {
  String text;
  int index;

  double _opacity;
  int _animationSpeed;
  @override
  void initState() {
    super.initState();
    text = widget.text;
    index = widget.index;

    _opacity = 0;
    _animationSpeed = 250;
    animationController();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: Duration(milliseconds: 750),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 33, top: 0),
            child:
                Text("•", style: TextStyle(color: kPrimaryColor, fontSize: 20)),
          ),
          Flexible(
            child: Text(text,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22.5,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  animationController() async {
    await Future.delayed(Duration(milliseconds: _animationSpeed * index));

    setState(() {
      _opacity = 1;
    });
  }
}
