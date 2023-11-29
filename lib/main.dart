import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:onlinabags/src/constants/text_strings.dart';
import 'package:onlinabags/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:onlinabags/src/features/authentication/screens/login/login_screen.dart';
import 'package:onlinabags/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:onlinabags/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:onlinabags/src/routing/routing.dart';
import 'package:onlinabags/src/utils/theme/theme.dart';

void main() => runApp(const App());


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: tHomeRoute,
      routes: {
        tLogInRoute: (context) => const LoginScreen(),
        tSignUpRoute: (context) => const SignUpScreen(),
        // Add more routes as needed
      },
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}