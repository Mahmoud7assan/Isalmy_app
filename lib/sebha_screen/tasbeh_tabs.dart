import 'package:flutter/material.dart';

class Tasebh_Tabs extends StatefulWidget {
  @override
  _Tasebh_TabsState createState() => _Tasebh_TabsState();
}

class _Tasebh_TabsState extends State<Tasebh_Tabs> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Image.asset(
          'assets/images/sebha.png',
          height: 312,
          width: 232,
        )),
        Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.headline2,
        ),
        Container(
          height: 69,
          width: 75,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25)),
          alignment: Alignment.center,
          child: Text(
            '$counter',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {

            counter++;
            setState(() {

            });

          },
          child: Text(
            'سبحان الله',
            style: TextStyle(fontSize: 20),
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor)),
        )
      ],
    );
  }
}
