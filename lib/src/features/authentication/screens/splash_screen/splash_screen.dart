import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: height * -0.015, leftBefore: height * -0.050, leftAfter: height * -0.015, topBefore: height * -0.050,
            ),
            child: Image(image: const AssetImage(tSplashTopIcon), height: height * 0.15),
          ),
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(topBefore: height * 0.160, topAfter: height * 0.160, leftAfter: tDefaultSize, leftBefore: -80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName,
                    style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: height * 0.040)),
                Text(tAppTagLine,
                    style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: height * 0.042))
              ],
            ),
          ),
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: height * 0.160, leftBefore: 0, leftAfter: height * 0.025),
            child: Image(image: const AssetImage(tSplashImage), height: height * 0.5,),
          ),
          // TFadeInAnimation(
          //   durationInMs: 1600,
          //   animate: TAnimatePosition(bottomBefore: 0, bottomAfter: height * 0.060, rightBefore: tDefaultSize, rightAfter: tDefaultSize),
          //   child: Container(
          //     width: tSplashContainerSize,
          //     height: tSplashContainerSize,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(100),
          //         color: tPrimaryColor
          //     ),
          //   ),
          // ),
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              bottomAfter: 0, rightBefore: height * -0.030, rightAfter: 0, bottomBefore: height * -0.030,
            ),
            child: Image(image: const AssetImage(tSplashBottomIcon), height: height * 0.15,),
          ),
        ],
      ),
    );
  }
}