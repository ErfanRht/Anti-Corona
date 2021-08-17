import 'package:coronavirus/constants/colors.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/screens/loading/controller.dart';
import 'package:coronavirus/screens/loading/get-data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingRetryButton extends StatefulWidget {
  BuildContext parentContext;
  LoadingRetryButton({@required this.parentContext});
  @override
  _LoadingRetryButtonState createState() => _LoadingRetryButtonState();
}

class _LoadingRetryButtonState extends State<LoadingRetryButton> {
  double _opacity;
  @override
  void initState() {
    super.initState();
    _opacity = 0.0;
    animatedController();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoadingController>(builder: (_) {
      return InkWell(
        onTap: () {
          Get.find<LoadingController>()
              .updateLoading(newLoadingStatus: LoadingStatus.LOADING);
          getData().then((response) {
            if (response) pass(widget.parentContext);
          });
        },
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
          duration: Duration(milliseconds: 250),
          child: Container(
            height: 85,
            width: 225,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(15)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('خطا در برقراری ارتباط با سرور',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sync_outlined, color: Colors.white, size: 25),
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
    });
  }

  animatedController() async {
    await Future.delayed(Duration(milliseconds: 100));
    setState(() {
      _opacity = 1.0;
    });
  }
}
