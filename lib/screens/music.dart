import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../screens/animation.dart';

class Muziek extends StatefulWidget {
  @override
  State<Muziek> createState() => _MuziekState();
}

class _MuziekState extends State<Muziek> {
  final AudioPlayer audioSpeler = AudioPlayer();
  bool playing = false;

  Widget build(BuildContext context) {


    return Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  playing ? audioSpeler.pause():
                  audioSpeler.play(AssetSource('media/music.mp3'), volume: 0.5);
                  playing = !playing;
                  setState(() {} );
                },
                child: Text(playing?"pause":"play", textScaleFactor: 2)
            ),
            Image.asset("assets/images/rosetattoo.jpg"),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,20,8,8),
              child: Animatie(),
            )
          ],
        )
    );
  }
}