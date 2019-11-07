import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPage extends StatefulWidget {
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  String duration = "00:00:00";
  AudioPlayer audioPlayer;

  // contructor
  _AudioPageState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((audioDuration) {
      setState(() {
        duration = audioDuration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  // method
  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Playing Music"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    playSound(
                        "http://23.237.126.42/ost/top-gear-2-sega-genesis/yzcalloe/01_Title%20Theme.mp3");
                    duration = "Mulai";
                  });
                },
                child: Text("Play"),
              ),
              RaisedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text("Pause"),
              ),
              RaisedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text("Resume"),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    stopSound();
                    duration = "00:00:00";
                  });
                },
                child: Text("Stop"),
              ),
              Text(
                duration,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
