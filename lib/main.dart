import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  Future<void> musicPhone(int musicNumber) async {
     final player = AudioPlayer();
     await player.play(AssetSource('music-$musicNumber.mp3'));
  }

  /*Expanded myButtons(int musicN, Color colorButton, String textButton){
    return Expanded(
              child: OutlinedButton(
                onPressed: () {
                  musicPhone(musicN);
                },
                child: const Text(
                  textButton,
                  style: TextStyle(
                    color: colorButton,
                    fontSize: 22.0,
                  ),
                ),
              ),
            );
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("MusicApp"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0,bottom: 6.0,left: 6.0,right: 6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(
                    width: 5,
                    color: Colors.red
                  ),
                ),
                  onPressed: () {
                    musicPhone(1);
                  },
                  child: const Row(
                    children:  [
                      Padding(
                        padding: EdgeInsets.only(left : 20.0),
                        child: Icon(Icons.music_note,
                        color: Colors.red,
                        ),
                      ),
                      SizedBox( 
                        width: 20.0,
                      ),
                       Text(
                      "Samsung Galaxy",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 22.0,
                      ),
                    ),
                    ]
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 78, 8, 199)
                  ),
                ),
                  onPressed: () async {
                      musicPhone(2);
                  },
                  child:const Row(
                    children: [
                    Icon(Icons.music_note),
                    SizedBox( 
                      width: 20.0,
                    ),
                    Text(
                      "IPhone 13 Pro",
                      style: TextStyle(
                        color: Color.fromARGB(255, 78, 8, 199),
                        fontSize: 22.0,
                      ),
                    ),
                    ]
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 244, 54, 235)
                  ),
                ),
                  onPressed: () async {
                    musicPhone(3);
                  },
                  //style: ElevatedButton.styleFrom(elevation: 5),
                  child: const Row(
                    children: [
                      Icon(Icons.music_note,
                      color: Color.fromARGB(255, 244, 54, 235)),
                      SizedBox( 
                        width: 20.0,
                      ),
                    Text(
                      "Samsung Edge",
                      style: TextStyle(
                        color: Color.fromARGB(255, 244, 54, 235),
                        fontSize: 22.0,
                      ),
                    ),
                    ]
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 54, 244, 143),
                  ),
                ),
                  onPressed: () async {
                    musicPhone(4);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.music_note,
                      color: Color.fromARGB(255, 54, 244, 143),
                      ),
                      SizedBox( 
                        width: 20.0,
                      ),
                       Text(
                      "Samsung S21 Ultras",
                      style: TextStyle(
                        color: Color.fromARGB(255, 54, 244, 143),
                        fontSize: 22.0,
                      ),
                    ),
                    ]
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 106, 63, 13)
                  ),
                ),
                  onPressed: () async {
                    musicPhone(5);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.music_note,
                      color: Color.fromARGB(255, 106, 63, 13),
                      ),
                      SizedBox( 
                        width: 20.0,
                      ),
                       Text(
                      "IPhone 6",
                      style: TextStyle(
                        color: Color.fromARGB(255, 106, 63, 13),
                        fontSize: 22.0,
                      ),
                    ),
                    ]
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 244, 54, 114)
                  ),
                ),
                  onPressed: () async {
                    musicPhone(6);
                  },
                  child: const Row(
                    children: [ 
                      Icon(Icons.music_note,
                      color: Color.fromARGB(255, 244, 54, 114),
                      ),
                      SizedBox( 
                        width: 20.0,
                      ),
                      Text(
                      "Samsung Galaxy",
                      style: TextStyle(
                        color: Color.fromARGB(255, 244, 54, 114),
                        fontSize: 22.0,
                      ),
                    ),
                    ]
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 12, 201, 231)
                  ),
                ),
                  onPressed: () async {
                    musicPhone(7);
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.music_note,
                      color: Color.fromARGB(255, 12, 201, 231),
                      ),
                      SizedBox( 
                        width: 20.0,
                      ),
                      Text(
                      "Samsung Galaxy",
                      style: TextStyle(
                        color: Color.fromARGB(255, 12, 201, 231),
                        fontSize: 22.0,
                      ),
                    ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}