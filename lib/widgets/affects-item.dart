import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/screens/base/pages/about/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AffectsItem extends StatefulWidget {
  String text;
  int index;
  AffectsItem({@required this.text, @required this.index});
  @override
  _AffectsItemState createState() => _AffectsItemState();
}

class _AffectsItemState extends State<AffectsItem> {
  final AboutController aboutController = Get.put(AboutController());

  String text;
  int index;

  double _opacity;
  int _animationSpeed;
  @override
  void initState() {
    super.initState();
    text = widget.text;
    index = widget.index;

    _animationSpeed = 100;
    if (!aboutController.animationCompleted) {
      _opacity = 0;
      animationController();
    } else {
      _opacity = 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: Duration(milliseconds: 300),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 33, top: 0),
            child:
                Text("•", style: TextStyle(color: kPrimaryColor, fontSize: 20)),
          ),
          SizedBox(
            width: 5,
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

    if (index == 17) {
      Get.find<AboutController>().updateAbout(newAnimationCompleted: true);
    }
  }
}
