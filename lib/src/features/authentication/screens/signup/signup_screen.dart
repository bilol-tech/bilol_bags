import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinabags/src/features/authentication/screens/signup/widget/signup_footer_widget.dart';
import 'package:onlinabags/src/features/authentication/screens/signup/widget/signup_form_widget.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.030, bottom: size.height * 0.0007),
                child: FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  heightBetween: size.height * 0.022,
                  subTitle: tSignUpSubTitle,
                  imageHeight: 0.15,
                ),
              ),
              const SignUpFormWidget(),
              const SignupFooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}