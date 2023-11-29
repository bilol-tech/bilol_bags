
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinabags/src/routing/routing.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR", style: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontSize: size.height * 0.022
        )),
        const SizedBox(height: tFormHeight - 20),
        SizedBox(
          width: double.infinity,
          height: size.height * 0.070,
          child: OutlinedButton.icon(
            icon: Image(image: const AssetImage(tGoogleLogoImage), width: size.height * 0.030),
            onPressed: () {},
            label: Text(tSignInWithGoogle, style: Theme.of(context).textTheme.headline1?.copyWith(
                fontSize: size.height * 0.022
            )),
          ),
        ),
        const SizedBox(height: tFormHeight - 30),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, tLogInRoute);
          },
          child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize:  size.height * 0.021
                ),
                children: const [
                  TextSpan(text: tLogin, style: TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ],
    );
  }
}