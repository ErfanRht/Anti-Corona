import 'package:coronavirus/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../controller.dart';
import 'package:get/get.dart';

class LoadingSpinkit extends StatefulWidget {
  @override
  _LoadingSpinkitState createState() => _LoadingSpinkitState();
}

class _LoadingSpinkitState extends State<LoadingSpinkit> {
  double _opacity;
  @override
  void initState() {
    super.initState();
    _opacity = 0.0;
    animatedController();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoadingController>(
      builder: (_) {
        return AnimatedOpacity(
          opacity: 1,
          duration: Duration(milliseconds: 50),
          child: SpinKitThreeBounce(
            color: kPrimaryColor,
            size: 30,
          ),
        );
      },
    );
  }

  animatedController() async {
    setState(() {
      _opacity = 1.0;
    });
  }
}
