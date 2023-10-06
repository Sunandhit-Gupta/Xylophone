import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

void playAudio(int number) async {
  final player = AudioPlayer();
  await player.play(AssetSource('note$number.wav'));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  playAudio(1);
                }, 
                child: Text('1'),
                style: ElevatedButton.styleFrom(primary: Colors.purple),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.indigo,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.indigo),
                  onPressed: () {
                    playAudio(2);
                  },
                  child: Text('2')),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: ElevatedButton(
                onPressed: () {
                  playAudio(3);
                },
                child: Text('3'),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: ElevatedButton(
                onPressed: () {
                  playAudio(4);
                },
                child: Text('4'),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: ElevatedButton(
                onPressed: () {
                  playAudio(5);
                },
                child: Text('5'),
                style: ElevatedButton.styleFrom(primary: Colors.yellow),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: ElevatedButton(
                onPressed: () {
                  playAudio(6);
                },
                child: Text('6'),
                style: ElevatedButton.styleFrom(primary: Colors.orange),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: ElevatedButton(
                onPressed: () {
                  playAudio(7);
                },
                child: Text('7'),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
