import 'package:flutter/material.dart';
import 'package:flutter_app_c7/hadeth_screen/hadeth_tabs.dart';
import 'package:flutter_app_c7/hadeth_screen/hadeth_text.dart';

class HadethItem extends StatelessWidget {
  Hadeth hadeth;

  HadethItem({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(Hadeth_Text.routeName,arguments: hadeth);
        },
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
