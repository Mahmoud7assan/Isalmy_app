import 'package:flutter/material.dart';
import 'package:flutter_app_c7/quran_screen/sura_details.dart';

class Text_Sura extends StatelessWidget {
  String name;
  int index;

  Text_Sura({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
              arguments: ScreenArgs(index: index, name: name));
        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline3,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ScreenArgs {
  String name;
  int index;

  ScreenArgs({required this.index, required this.name});
}
