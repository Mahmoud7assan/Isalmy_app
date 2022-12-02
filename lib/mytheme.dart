import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color WhiteColor = Colors.white;
  static ThemeData LightTheme = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: blackColor),

      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: blackColor, fontSize: 25, fontWeight: FontWeight.bold),
        headline3: TextStyle(
            color: blackColor, fontSize: 25, fontWeight: FontWeight.w500),
      ));
  static ThemeData DarkTheme = ThemeData();
}
