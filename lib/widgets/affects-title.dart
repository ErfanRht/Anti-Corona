import 'package:coronavirus/screens/base/pages/about/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AffectsTitle extends StatefulWidget {
  String text;
  int index;
  AffectsTitle({@required this.text, @required this.index});

  @override
  _AffectsTitleState createState() => _AffectsTitleState();
}

class _AffectsTitleState extends State<AffectsTitle> {
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
            padding: EdgeInsets.only(right: 20, top: 20),
            child:
                Text(text, style: TextStyle(color: Colors.black, fontSize: 25)),
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
