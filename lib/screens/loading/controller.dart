import 'package:coronavirus/constants/types.dart';
import 'package:get/get.dart';

class LoadingController extends GetxController {
  LoadingStatus loadingStatus = LoadingStatus.LOADING;

  updateLoading({LoadingStatus newLoadingStatus}) {
    loadingStatus = newLoadingStatus != null ? newLoadingStatus : loadingStatus;

    update();
  }
}
