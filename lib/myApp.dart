import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);
  @override
  void playMusic(int musicNum) {
    var player = AudioPlayer();
    player.play(AssetSource('note$musicNum.wav'));
  }

  Expanded buildKey({required Color colors, required int number}) {
    return Expanded(
      child: Container(
        color: colors,
        child: TextButton(
          onPressed: () {
            playMusic(number);
          },
          child: Text(""),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colors: Colors.red, number: 1),
              buildKey(colors: Colors.yellow, number: 2),
              buildKey(colors: Colors.blue, number: 3),
              buildKey(colors: Colors.orange, number: 4),
              buildKey(colors: Colors.green, number: 5),
              buildKey(colors: Colors.purple, number: 6),
              buildKey(colors: Colors.pink, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
