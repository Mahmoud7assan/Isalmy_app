import 'package:flutter/material.dart';
import 'package:flutter_app_c7/model/RadioSources.dart';
import 'package:flutter_app_c7/model/apimanger.dart';
import 'package:flutter_app_c7/radio_screen/radio_item.dart';

class Radio_Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return FutureBuilder<RadioSources>(
        future: ApiManger.getRadio(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var radioList = snapshot.data?.radios ?? [];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    flex: 2,
                    child:
                        Center(child: Image.asset('assets/images/radio.png'))),
                Expanded(
                  flex: 1,
                  child: Text(
                    'اذاعة القرأن الكريم',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(width: media.width,
                        child: Radio_item(
                          radio: radioList[index],
                        ),
                      );
                    },
                  ),
                )
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
