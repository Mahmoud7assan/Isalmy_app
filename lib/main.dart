import 'package:flutter/material.dart';
import 'package:flutter_app_c7/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home_Screen.routeName,
      routes: {
        Home_Screen.routeName : (context) => Home_Screen()
      },

    );
  }
}
