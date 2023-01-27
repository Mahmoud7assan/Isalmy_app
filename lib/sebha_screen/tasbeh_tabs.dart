import 'package:flutter/material.dart';

class Tasebh_Tabs extends StatefulWidget {
  @override
  _Tasebh_TabsState createState() => _Tasebh_TabsState();
}

class _Tasebh_TabsState extends State<Tasebh_Tabs> {
  int counter = 0;
  double angle = 0.0;
  int currentIndex = 0;
  List<String> azkar = ["سبحان الله", "الحمدلله", "الله اكبر"];

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: mediaquery.height * 0.5,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset('assets/images/sebha_head.png',
                      height: mediaquery.height * 0.11),
                  left: mediaquery.width * 0.48,
                ),
                Positioned(
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      'assets/images/sebha_body.png',
                      height: mediaquery.height * 0.28,
                    ),
                  ),
                  top: 55,
                  left: mediaquery.width * 0.2,
                ),
              ],
            ),
          ),
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
              onClick();
              setState(() {});
            },
            child: Text(
              azkar[currentIndex],
              style: TextStyle(fontSize: 20),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor)),
          )
        ],
      ),
    );
  }

  void onClick() {
    counter++;
    angle--;
    if (counter == 33) {
      currentIndex++;
      counter = 0;
    }
    if (currentIndex == 3) {
      currentIndex = 0;
    }
    setState(() {});
  }
}
