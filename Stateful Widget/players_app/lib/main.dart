import 'package:flutter/material.dart';

void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget {
  const PlayersApp({super.key});

  @override

  State <PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int _counter = 0;

  List<String> playerList = <String>[

    "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
    "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/348100/348106.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5IMvU5mzUNUAVtUPVexkzgt3cDPUE6113Q&s",
    "https://thepatriot.in/wp-content/uploads/2024/06/Shubman-Gill.jpg"
  ];
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Players',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 39, 38, 38),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 128, 0),
        title: const Text("PLAYER APP"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              playerList[_counter],
              height: 400,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_counter < playerList.length-1) {
            _counter++;
          } else {
            _counter = 0;
          }
          setState(() {});
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
      ),
      ),
    );
  }
}