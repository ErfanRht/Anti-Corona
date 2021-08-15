import 'package:get/get.dart';

class HomeController extends GetxController {
  bool animationCompleed = false;

  updateHome({bool newAnimationCompleed}) {
    animationCompleed =
        newAnimationCompleed != null ? newAnimationCompleed : animationCompleed;
    update();
  }
}
