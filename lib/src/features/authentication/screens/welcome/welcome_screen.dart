import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinabags/src/constants/colors.dart';
import 'package:onlinabags/src/constants/image_strings.dart';
import 'package:onlinabags/src/constants/sizes.dart';
import 'package:onlinabags/src/constants/text_strings.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Container(
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
                  tWelcomeTitle, textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  tWelcomeSubTitle, textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(tLogin.toUpperCase()),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(tSignup.toUpperCase()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
