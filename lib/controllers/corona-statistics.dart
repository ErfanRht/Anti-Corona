import 'package:get/get.dart';

class StatisticsController extends GetxController {
  String iranTotalCases;
  String iranTotalDeaths;
  String iranTotalRecovered;
  String iranActiveCases;
  String iranSeriousCases;
  String iranNewCases;
  String iranNewDeaths;
  String iranNewRecovered;
  String globalTotalCases;
  String globalTotalDeaths;
  String globalTotalRecovered;
  String globalActiveCases;
  String globalSeriousCases;
  String globalNewCases;
  String globalNewDeaths;
  String globalNewRecovered;

  updateStatistics(
      {String newIranTotalCases,
      String newIranTotalDeaths,
      String newIranTotalRecovered,
      String newIranActiveCases,
      String newIranSeriousCases,
      String newIranNewCases,
      String newIranNewDeaths,
      String newIranNewRecovered,
      String newGlobalTotalCases,
      String newGlobalTotalDeaths,
      String newGlobalTotalRecovered,
      String newGlobalActiveCases,
      String newGlobalSeriousCases,
      String newGlobalNewCases,
      String newGlobalNewDeaths,
      String newGlobalNewRecovered}) {
    iranTotalCases =
        newIranTotalCases != null ? newIranTotalCases : iranTotalCases;
    iranTotalDeaths =
        newIranTotalDeaths != null ? newIranTotalDeaths : iranTotalDeaths;
    iranTotalRecovered = newIranTotalRecovered != null
        ? newIranTotalRecovered
        : iranTotalRecovered;
    iranActiveCases =
        newIranActiveCases != null ? newIranActiveCases : iranActiveCases;
    iranSeriousCases =
        newIranSeriousCases != null ? newIranSeriousCases : iranSeriousCases;
    iranNewCases = newIranNewCases != null ? newIranNewCases : iranNewCases;
    iranNewDeaths = newIranNewDeaths != null ? newIranNewDeaths : iranNewDeaths;
    iranNewRecovered =
        newIranNewRecovered != null ? newIranNewRecovered : iranNewRecovered;
    globalTotalCases =
        newGlobalTotalCases != null ? newGlobalTotalCases : globalTotalCases;
    globalTotalDeaths =
        newGlobalTotalDeaths != null ? newGlobalTotalDeaths : globalTotalDeaths;
    globalTotalRecovered = newGlobalTotalRecovered != null
        ? newGlobalTotalRecovered
        : globalTotalRecovered;
    globalActiveCases =
        newGlobalActiveCases != null ? newGlobalActiveCases : globalActiveCases;
    globalSeriousCases = newGlobalSeriousCases != null
        ? newGlobalSeriousCases
        : globalSeriousCases;
    globalNewCases =
        newGlobalNewCases != null ? newGlobalNewCases : globalNewCases;
    globalNewDeaths =
        newGlobalNewDeaths != null ? newGlobalNewDeaths : globalNewDeaths;
    globalNewRecovered = newGlobalNewRecovered != null
        ? newGlobalNewRecovered
        : globalNewRecovered;

    update();
  }
}
