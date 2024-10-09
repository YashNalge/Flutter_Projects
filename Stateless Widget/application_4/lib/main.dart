import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
        title: const Text("ContainerApp"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 36, 21, 243),
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
             Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ), Container(
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 8, 232, 15),
            ),
          ],
        ),
      ),
      )
    );
  }
}