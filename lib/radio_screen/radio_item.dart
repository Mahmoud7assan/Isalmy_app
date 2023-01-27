import 'package:flutter/material.dart';
import 'package:flutter_app_c7/model/RadioSources.dart';
import 'package:audioplayers/audioplayers.dart';

class Radio_item extends StatefulWidget {
  Radios radio;

  Radio_item({required this.radio});

  @override
  State<Radio_item> createState() => _Radio_itemState();
}

class _Radio_itemState extends State<Radio_item> {
  var audiPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.radio.name ?? '',
            style: Theme.of(context).textTheme.headline1),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: play,
                icon: Icon(
                  Icons.play_arrow,
                  size: 30,
                )),
            IconButton(onPressed: pause, icon: Icon(Icons.pause)),
          ],
        ),
      ],
    );
  }

  void play() async  {
    await audiPlayer.play(UrlSource(widget.radio.url!));
  }

  void pause() async {
    await audiPlayer.pause();
  }
}
