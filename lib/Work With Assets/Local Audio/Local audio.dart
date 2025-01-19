import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Audio());
}

class Audio extends StatefulWidget{
  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio>{
  final AudioPlayer audioPlayer = AudioPlayer();
  
  @override
  void dispose(){
    audioPlayer.dispose();
    super.dispose();
  }
  
  void playAudio() async{
    await audioPlayer.play(AssetSource('audio/sound.mp3'));
  }

  void stopAudio() async {
    await audioPlayer.stop();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Audio Player Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: playAudio, child: const Text("Play Audio"),
              ),

              ElevatedButton(
                  onPressed: stopAudio, child: const Text('Stop Audio')
              ),

            ],
          ),
        ),
      ),
    );
  }
}

