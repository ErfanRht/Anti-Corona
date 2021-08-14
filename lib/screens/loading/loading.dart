import 'package:coronavirus/constants/routes.dart';
import 'package:coronavirus/controllers/corona-statistics.dart';
import 'package:coronavirus/screens/loading/logo.dart';
import 'package:coronavirus/screens/loading/spin-kit.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final StatisticsController statisticsController =
      Get.put(StatisticsController());
  @override
  Widget build(BuildContext context) {
    getData();
    pass(context);

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
  }

  pass(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacementNamed(context, base_route);
  }

  getData() async {
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
      } else {
        print("response: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
  }
}
