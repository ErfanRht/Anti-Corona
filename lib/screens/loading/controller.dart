import 'package:coronavirus/constants/types.dart';
import 'package:get/get.dart';

class LoadingController extends GetxController {
  LoadingStatus loadingStatus = LoadingStatus.LOADING;
  bool isFirstEnter = false;

  updateLoading({LoadingStatus newLoadingStatus, bool newFirstEnterStatus}) {
    loadingStatus = newLoadingStatus != null ? newLoadingStatus : loadingStatus;
    isFirstEnter =
        newFirstEnterStatus != null ? newFirstEnterStatus : isFirstEnter;

    update();
  }
}
