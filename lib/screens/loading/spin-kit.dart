import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'controller.dart';
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
        return showLoading(_.loadingStatus);
      },
    );
  }

  Widget showLoading(LoadingStatus loadingStatus) {
    switch (loadingStatus) {
      case (LoadingStatus.LOADING):
        return AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 500),
          child: SpinKitThreeBounce(
            color: kPrimaryColor,
            size: 30,
          ),
        );
      case (LoadingStatus.LOADED):
        return AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 500),
          child: SpinKitThreeBounce(
            color: kPrimaryColor,
            size: 30,
          ),
        );
      case (LoadingStatus.LOAD_FAILED):
        return InkWell(
          onTap: () {},
          onHighlightChanged: (status) {
            if (status) {
              setState(() {
                _opacity = 0.85;
              });
            } else {
              setState(() {
                _opacity = 1.0;
              });
            }
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: AnimatedOpacity(
            opacity: _opacity,
            duration: Duration(milliseconds: 150),
            child: Container(
              height: 85,
              width: 225,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('خطا در برقراری ارتباط با سرور',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.sync_outlined,
                            color: Colors.white, size: 25),
                        Text(
                          ' تلاش مجدد',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 25,
                        )
                      ],
                    )
                  ]),
            ),
          ),
        );
      default:
    }
  }

  animatedController() async {
    await Future.delayed(Duration(milliseconds: 750));
    setState(() {
      _opacity = 1.0;
    });
  }
}
