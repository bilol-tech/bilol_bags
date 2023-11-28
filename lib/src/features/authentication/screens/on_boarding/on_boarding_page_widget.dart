import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;


  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: height * 0.45,
          ),
          Column(
            children: [
              Text(
                model.title, textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: height * 0.04, color: isDarkMode ? tSecondaryColor : tPrimaryColor),
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: height * 0.019, color: isDarkMode ? tSecondaryColor : tPrimaryColor),
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: height * 0.023, color: isDarkMode ? tSecondaryColor : tPrimaryColor),
          ),
          SizedBox(
            height: height * 0.1,
          )
        ],
      ),
    );
  }
}