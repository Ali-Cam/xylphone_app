import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget playSound({Color color, int noteNumber}){
    return Expanded(
      child: (
          FlatButton(
            padding: EdgeInsets.only(left: 0.0),
            onPressed: (){
              final play = AudioCache();
              play.play('note$noteNumber.wav');
              play.clear('note$noteNumber.wav');
            },
            color: color,
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playSound(color: Colors.yellow, noteNumber:1),
              playSound(color: Colors.orange, noteNumber:2),
              playSound(color: Colors.red, noteNumber:3),
              playSound(color: Colors.teal, noteNumber:4),
              playSound(color: Colors.green, noteNumber:5),
              playSound(color: Colors.purple, noteNumber:6),
              playSound(color: Colors.blue, noteNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}





