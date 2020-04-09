import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: XylophoneApp(),
    ));
final player = AudioCache();
Expanded key({Color color, int num}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        player.play("note$num.wav");
      },
      padding: EdgeInsets.all(0),
      child: Container(
        color: color,
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              key(color: Colors.red, num: 1),
              key(color: Colors.green, num: 2),
              key(color: Colors.blue, num: 3),
              key(color: Colors.yellow, num: 4),
              key(color: Colors.pink, num: 5),
              key(color: Colors.purple, num: 6),
              key(color: Colors.orange, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
