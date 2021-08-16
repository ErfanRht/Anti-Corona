import 'package:flutter/material.dart';

class AffectsTitle extends StatefulWidget {
  String text;
  int index;
  AffectsTitle({@required this.text, @required this.index});

  @override
  _AffectsTitleState createState() => _AffectsTitleState();
}

class _AffectsTitleState extends State<AffectsTitle> {
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
  }
}
