import 'package:flutter/material.dart';

class LoadingLogo extends StatefulWidget {
  @override
  _LoadingLogoState createState() => _LoadingLogoState();
}

class _LoadingLogoState extends State<LoadingLogo> {
  Duration _animationSpeed;
  double _opacity;
  EdgeInsets _padding;
  @override
  void initState() {
    super.initState();
    _animationSpeed = Duration(milliseconds: 500);
    _opacity = 0.0;
    _padding = EdgeInsets.only(top: 40);
    animationController();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: _animationSpeed,
      opacity: _opacity,
      child: AnimatedContainer(
        duration: _animationSpeed,
        padding: _padding,
        child: Image.asset(
          'assets/images/app-logo.jpg',
          height: MediaQuery.of(context).size.width / 1.5,
        ),
      ),
    );
  }

  animationController() async {
    await Future.delayed(Duration(milliseconds: 350));
    setState(() {
      _opacity = 1;
      _padding = EdgeInsets.zero;
    });
  }
}
