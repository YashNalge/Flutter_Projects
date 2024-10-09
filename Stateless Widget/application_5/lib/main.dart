import 'package:flutter/material.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 143, 205, 255),
        appBar: AppBar(
        title: const Text("Indian Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 250,
              color: Colors.orange,
            ),
            Container(
              height: 40,
              width: 250,
              color: Colors.white,
              child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/019/136/455/original/ashok-chakra-logo-ashok-chakra-free-free-vector.jpg"),
            ),
            Container(
              height: 40,
              width: 250,
              color: const Color.fromARGB(255, 10, 205, 16),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
