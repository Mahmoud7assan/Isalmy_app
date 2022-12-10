import 'package:flutter/material.dart';

class AppConfig extends ChangeNotifier{
  String Languages = 'en';
  ThemeMode appTheme = ThemeMode.light;
  void ChangeLanguage(String NewLanguage){
    if(Languages == NewLanguage){
      return;
    }
    Languages = NewLanguage;
    notifyListeners();
  }
  void ChangeTheme(ThemeMode NewTheme){
    if(appTheme == NewTheme){
      return;
    }
    appTheme = NewTheme;
    notifyListeners();
  }
}