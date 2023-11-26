import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());


  @override
  Widget build(BuildContext context) {
    SplashScreenController.find.startAnimation();


    return Scaffold(
      body: Stack(
        children: [
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 0 : -30,
              left: splashController.animate.value ? 0 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage(tSplashTopIcon)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              top: 130,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tAppName, style: Theme.of(context).textTheme.headline3),
                    Text(tAppTagLine, style: Theme.of(context).textTheme.headline2)
                  ],
                ),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 250 : 0,
              left: splashController.animate.value ? 60 : 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 2000),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage(tSplashImage)),
              ),
            ),
          ),
          Obx(
                () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 0 : -30,
              right: splashController.animate.value ? 0 : -30,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: const Image(image: AssetImage(tSplashBottomIcon)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}