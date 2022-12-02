import 'package:flutter/material.dart';

class Text_Sura extends StatelessWidget {
  String name;

  Text_Sura({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        name,
        style: Theme.of(context).textTheme.headline3,
        textAlign: TextAlign.center,
      ),
    );
  }
}
