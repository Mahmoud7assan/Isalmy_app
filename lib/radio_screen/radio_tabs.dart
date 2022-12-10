import 'package:flutter/material.dart';

class Radio_Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
        ),
        Center(child: Image.asset('assets/images/radio.png')),
        Text(
          'اذاعة القرأن الكريم',
          style: Theme.of(context).textTheme.headline1,
        ),SizedBox(
          height: 70,
        ),
        Center(child: Image.asset('assets/images/play_list.png')),
      ],
    );
  }
}
