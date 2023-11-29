import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:onlinabags/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:onlinabags/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:onlinabags/src/constants/colors.dart';
import 'package:onlinabags/src/constants/image_strings.dart';
import 'package:onlinabags/src/constants/sizes.dart';
import 'package:onlinabags/src/constants/text_strings.dart';
import 'package:onlinabags/src/routing/routing.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.animationIn();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -200,
                leftAfter: 0,
                leftBefore: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0),
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: const AssetImage(tWelcomeScreenImage),
                    height: height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            ?.copyWith(fontSize: height * 0.04),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: height * 0.023),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, tLogInRoute);
                          },
                          child: Text(tLogin.toUpperCase()),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, tSignUpRoute);
                          },
                          child: Text(tSignup.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
