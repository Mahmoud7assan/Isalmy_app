import 'package:flutter/material.dart';
import 'package:flutter_app_c7/quran_screen/sura_details.dart';

class Text_api extends StatelessWidget {
  String title;
  int index;

  Text_api({required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
            arguments: ScreenArgs(index: index, title: title));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ScreenArgs {
  String title;
  int index;

  ScreenArgs({required this.title, required this.index});
}
