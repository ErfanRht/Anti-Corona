import 'package:coronavirus/constants/routes.dart';
import 'package:coronavirus/constants/server.dart';
import 'package:coronavirus/constants/types.dart';
import 'package:coronavirus/controllers/corona-statistics.dart';
import 'package:coronavirus/screens/loading/controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:get/get.dart';

Future<bool> getData() async {
  var url = Uri.parse("${serverAddress}get-statistics");
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
          newIranNewRecovered: iranStatistics['new_recovered'],
          newGlobalTotalCases: globalStatistics['total_cases'],
          newGlobalTotalDeaths: globalStatistics['total_deaths'],
          newGlobalTotalRecovered: globalStatistics['total_recovered'],
          newGlobalActiveCases: globalStatistics['active_cases'],
          newGlobalSeriousCases: globalStatistics['serious_cases'],
          newGlobalNewCases: globalStatistics['new_cases'],
          newGlobalNewDeaths: globalStatistics['new_deaths'],
          newGlobalNewRecovered: globalStatistics['new_recovered']);
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

pass(BuildContext context) async {
  final LoadingController loadingController = Get.put(LoadingController());

  await Future.delayed(Duration(milliseconds: 1500));

  if (loadingController.isFirstEnter) {
    Navigator.pushReplacementNamed(context, intro_route);
  } else {
    Navigator.pushReplacementNamed(context, base_route);
  }
}
