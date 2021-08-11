import 'package:get/get.dart';

class BaseController extends GetxController {
  int currentPage = 1;

  updateBase({int newCurrentPage}) {
    currentPage = newCurrentPage != null ? newCurrentPage : currentPage;
    update();
  }
}
