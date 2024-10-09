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
        title: const Text("First App"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 36, 21, 243),
      ),
      body: const Center(
        child : Text("Incubators"),
      ),
      )
    );
  }
}

