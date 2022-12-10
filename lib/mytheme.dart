import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static Color WhiteColor = Colors.white;
  static Color primaryDark = Color(0xff141A2E);
  static Color YelloColor = Color(0xffFACC1D);
  static ThemeData LightTheme = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: blackColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
        unselectedItemColor: WhiteColor
      ),

      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent,
              elevation: 0,iconTheme: IconThemeData(color: blackColor)),

      textTheme: TextTheme(
        headline1: TextStyle(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            color: blackColor, fontSize: 20, fontWeight: FontWeight.bold),
        headline3: TextStyle(
            color: blackColor, fontSize: 25, fontWeight: FontWeight.w500),
        headline4: TextStyle(
          color: WhiteColor , fontSize: 20 , fontWeight: FontWeight.bold
        ),
          headline5: TextStyle(
              color: primaryLight , fontSize: 20 , fontWeight: FontWeight.bold
          )
      ));
  static ThemeData DarkTheme = ThemeData(
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color : YelloColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: YelloColor,
        unselectedItemColor: WhiteColor
      ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: WhiteColor),
      elevation: 0,
      color: Colors.transparent
    ),
      textTheme: TextTheme(
          headline1: TextStyle(
              color: WhiteColor, fontSize: 30, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              color: WhiteColor, fontSize: 20, fontWeight: FontWeight.bold),
          headline3: TextStyle(
              color: WhiteColor, fontSize: 25, fontWeight: FontWeight.w500),
          headline4: TextStyle(
              color: WhiteColor , fontSize: 20 , fontWeight: FontWeight.bold
          ),
          headline5: TextStyle(
              color: blackColor , fontSize: 20 , fontWeight: FontWeight.bold
          )
      )

  );
}
