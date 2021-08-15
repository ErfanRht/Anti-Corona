import 'package:get/get.dart';

class LoadingController extends GetxController {
  bool isFirstEnter = false;

  updateLoading(bool newEnterStatus) {
    isFirstEnter = newEnterStatus != null ? newEnterStatus : isFirstEnter;

    update();
  }
}
