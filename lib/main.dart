import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Container xyl(int noteToPlay, Color displayColor) {
    return Container(
      height: 60,
      width: 350,
      color: displayColor,
      child: FlatButton(
        onPressed: () {
          final AudioCache player = AudioCache();
          player.play('note$noteToPlay.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  xyl(1, Colors.red),
                  xyl(2, Colors.orange),
                  xyl(3, Colors.yellow),
                  xyl(4, Colors.blue),
                  xyl(5, Colors.indigo),
                  xyl(6, Colors.green),
                  xyl(7, Colors.black),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
