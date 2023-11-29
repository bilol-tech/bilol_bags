import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinabags/src/constants/text_strings.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    final size = MediaQuery.of(context).size;
    return Scaffold(
    body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.056, bottom: size.height * 0.046),
                child: FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tLoginTitle,
                  heightBetween: size.height * 0.022,
                  subTitle: tLoginSubTitle,
                  imageHeight: 0.15,
                ),
              ),
              const LoginForm(),
              const LoginFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}