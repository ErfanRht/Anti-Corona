import 'package:coronavirus/constants/routes.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/controllers/corona-statistics.dart';
import 'package:coronavirus/models/first-enter.dart';
import 'package:coronavirus/screens/loading/controller.dart';
import 'package:coronavirus/screens/loading/logo.dart';
import 'package:coronavirus/screens/loading/spin-kit.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final StatisticsController statisticsController =
      Get.put(StatisticsController());

  final LoadingController loadingController = Get.put(LoadingController());

  bool isFirstEnter;
  LoadingStatus loadingStatus;

  @override
  void initState() {
    super.initState();
    isFirstEnter = false;
    loadingStatus = LoadingStatus.LOADING;
    firstEnter(context);
    getData().then((response) {
      if (response) pass(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light));

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
              LoadingSpinkit(),
              SizedBox(),
            ],
          ),
        );
      },
    );
  }

  pass(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 1500));

    if (isFirstEnter) {
      Navigator.pushReplacementNamed(context, intro_route);
    } else {
      Navigator.pushReplacementNamed(context, base_route);
    }
  }

  Future<bool> getData() async {
    var url = Uri.parse('https://erfanrht.pythonanywhere.com/get-statistics');
    var response;
    try {
      response = await http.get(url).timeout(const Duration(seconds: 5));
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        var iranStatistics = jsonResponse['iran'];
        var globalStatistics = jsonResponse['global'];
        Get.find<StatisticsController>().updateStatistics(
          newIranTotalCases: iranStatistics['total_cases'],
          newIranTotalDeaths: iranStatistics['total_deaths'],
          newIranTotalRecovered: iranStatistics['total_recovered'],
          newIranActiveCases: iranStatistics['active_cases'],
          newIranSeriousCases: iranStatistics['serious_cases'],
          newIranNewCases: iranStatistics['new_cases'],
          newIranNewDeaths: iranStatistics['new_deaths'],
          newGlobalTotalCases: globalStatistics['total_cases'],
          newGlobalTotalDeaths: globalStatistics['total_deaths'],
          newGlobalTotalRecovered: globalStatistics['total_recovered'],
          newGlobalActiveCases: globalStatistics['active_cases'],
          newGlobalSeriousCases: globalStatistics['serious_cases'],
          newGlobalNewCases: globalStatistics['new_cases'],
          newGlobalNewDeaths: globalStatistics['new_deaths'],
        );
        Get.find<LoadingController>()
            .updateLoading(newLoadingStatus: LoadingStatus.LOADED);
        return true;
      } else {
        print("response: ${response.statusCode}");
        Get.find<LoadingController>()
            .updateLoading(newLoadingStatus: LoadingStatus.LOAD_FAILED);
        return false;
      }
    } catch (e) {
      print(e);
      Get.find<LoadingController>()
          .updateLoading(newLoadingStatus: LoadingStatus.LOAD_FAILED);
      return false;
    }
  }

  firstEnter(BuildContext context) {
    firstEnterModel().then((bool firstEnter) {
      print(firstEnter);
      setState(() {
        isFirstEnter = firstEnter;
      });
    });
  }
}
