import 'package:get/get.dart';

class AboutController extends GetxController {
  bool animationCompleted = false;

  updateAbout({bool newAnimationCompleted}) {
    animationCompleted = newAnimationCompleted != null
        ? newAnimationCompleted
        : animationCompleted;
    update();
  }
}
