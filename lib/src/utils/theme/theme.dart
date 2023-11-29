import 'package:flutter/material.dart';
import 'package:onlinabags/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:onlinabags/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:onlinabags/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:onlinabags/src/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();


  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    // ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    // elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,

  );
}