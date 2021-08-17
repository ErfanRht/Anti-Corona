import 'package:coronavirus/constants/routes.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/controllers/corona-statistics.dart';
import 'package:coronavirus/models/first-enter.dart';
import 'package:coronavirus/models/set-system-ui-overlay-style.dart';
import 'package:coronavirus/screens/loading/controller.dart';
import 'package:coronavirus/screens/loading/get-data.dart';
import 'package:coronavirus/screens/loading/sections/logo.dart';
import 'package:coronavirus/screens/loading/sections/retry-button.dart';
import 'package:coronavirus/screens/loading/sections/spin-kit.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final StatisticsController statisticsController =
      Get.put(StatisticsController());

  final LoadingController loadingController = Get.put(LoadingController());

  LoadingStatus loadingStatus;

  @override
  void initState() {
    super.initState();
    loadingStatus = LoadingStatus.LOADING;
    firstEnter(context);
    getData().then((response) {
      if (response) pass(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    setSystemUIOverlayStyle(systemUIOverlayStyle: SystemUIOverlayStyle.LIGHT);
    return GetBuilder<LoadingController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              SizedBox(),
              Center(child: LoadingLogo()),
              SizedBox(),
              ShowLoading(_.loadingStatus),
              SizedBox(),
            ],
          ),
        );
      },
    );
  }

  Widget ShowLoading(LoadingStatus loadingStatus) {
    switch (loadingStatus) {
      case (LoadingStatus.LOADING):
        return LoadingSpinkit();
      case (LoadingStatus.LOADED):
        return LoadingSpinkit();
      case (LoadingStatus.LOAD_FAILED):
        return LoadingRetryButton(
          parentContext: context,
        );
      default:
    }
  }

  firstEnter(BuildContext context) {
    firstEnterModel().then((bool firstEnter) {
      Get.find<LoadingController>()
          .updateLoading(newFirstEnterStatus: firstEnter);
    });
  }
}
