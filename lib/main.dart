import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded keyButton(Color color, int note) {
    return Expanded(
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              keyButton(Colors.red, 1),
              keyButton(Colors.orange, 2),
              keyButton(Colors.yellow, 3),
              keyButton(Colors.green, 4),
              keyButton(Colors.teal, 5),
              keyButton(Colors.blue, 6),
              keyButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
