import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../constants/colors.dart';
import '../../controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obController = OnBoardingController();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            enableSideReveal: true,
            liquidController: obController.controller,
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios, color: isDarkMode ? tSecondaryColor : tPrimaryColor),
            waveType: WaveType.circularReveal,
          ),
          Positioned(
            bottom: height * 0.100,
            child: OutlinedButton(
              onPressed: () => obController.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                // padding: EdgeInsets.all(height * 0.6),
                onPrimary: Colors.white,
                fixedSize: Size(56.0, height * 0.112)
              ),
              child: Container(
                padding: EdgeInsets.all(height * 0.014),
                decoration: const BoxDecoration(
                    color: tDarkColor, shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios, size: height * 0.023,),
              ),
            ),
          ),
          Positioned(
            top: height * 0.045,
            right: height * 0.005,
            child: TextButton(
              onPressed: () => obController.skip(),
              child: Text("Skip"),
            ),
          ),
          Obx(
                () => Positioned(
              bottom: height * 0.060,
              child: AnimatedSmoothIndicator(
                count: 3,
                activeIndex: obController.currentPage.value,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xff272727),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}