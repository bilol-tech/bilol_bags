import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:onlinabags/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';

import '../../features/authentication/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();

  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.off( // Get.off Instead of Get.offAll()
          () => const OnBoardingScreen(),
      duration: const Duration(milliseconds: 1000), //Transition Time
      transition: Transition.fadeIn, //Screen Switch Transition
    );
  }

  Future animationIn() async {
    await Future.delayed(const Duration(milliseconds: 200));
    animate.value = true;
  }

  Future animationOut() async {
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 100));
  }
}