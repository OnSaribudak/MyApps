import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: workSpace(),
      ),
    );
  }

  SafeArea workSpace() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: button('bip', Colors.yellow),
                  ),
                  Expanded(
                    child: button('bongo', Colors.green),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: button('clap1', Colors.blue),
                  ),
                  Expanded(
                    child: button('clap2', Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: button('clap3', Colors.pink),
                  ),
                  Expanded(
                    child: button('crash', Colors.purple),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: button('how', Colors.grey),
                  ),
                  Expanded(
                    child: button('oobah', Colors.red),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: button('ridebel', Colors.deepOrange),
                  ),
                  Expanded(
                    child: button('woo', Colors.lime),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton button(String sound, Color colorName) {
    return FlatButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: colorName,
        ),
      ),
      onPressed: () {
        player.play('$sound.wav');
      },
    );
  }
}
