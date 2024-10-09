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
        appBar: AppBar(
          title : const Text("Column Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network("https://plus.unsplash.com/premium_photo-1670148434570-8130d3bc05c9?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8emVufGVufDB8fDB8fHww"),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Image.network("https://www.shutterstock.com/image-photo/calm-weather-on-sea-ocean-600nw-2212935531.jpg"),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Image.network("https://i0.wp.com/picjumbo.com/wp-content/uploads/magical-spring-forest-scenery-during-morning-breeze-free-photo.jpg?w=600&quality=80"),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
