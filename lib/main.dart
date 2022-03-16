import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int note){
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({required int note, required Color color}){
    return Expanded(
      child: ElevatedButton(
        onPressed: (){
          playSound(note);
        },
        child: const Text(""),
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
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
              crossAxisAlignment : CrossAxisAlignment.stretch,
              children:  [
              buildKey(note :1, color :Colors.purple),
                buildKey(note: 2, color :Colors.blue),
                buildKey(note: 3, color: Colors.white),
                buildKey(note: 4, color: Colors.blue),
                buildKey(note: 5, color: Colors.orange),
                buildKey(note: 6, color: Colors.yellow),
                buildKey(note: 7, color: Colors.red),

              ]
          ),
        ),
      ),
    );
  }
}
