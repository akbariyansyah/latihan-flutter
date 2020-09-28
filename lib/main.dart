import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  AudioPlayer audioPlayer;

  String songDuration = "00:00:00";

  _MainPageState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        songDuration = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }
  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void resumeSound() async {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Playing Music"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  playSound("https://freemp3cloud.com/mr/601dfcd50ccbca489d2b4b58314f78cb.mp3?session_key=b10499827dcde25392424bd99704ccf5");
                },
                child: Text("PLAY"),
              ),
              RaisedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text("PAUSE"),
              ),
              RaisedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text("STOP"),
              ),
              RaisedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text("RESUME"),
              ),
              Text(
                songDuration,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ));
  }
}
