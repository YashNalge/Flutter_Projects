import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("device width : ${MediaQuery.of(context).size.width}");
    print("device width : ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Listview',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 72, 11, 146),
        ),
        body: ListView(
          children: [
            Image.network("https://www.befunky.com/images/prismic/1f427434-7ca0-46b2-b5d1-7d31843859b6_funky-focus-red-flower-field-after.jpeg?auto=avif,webp&format=jpg&width=863"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Niceee",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network("https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg"),
            GestureDetector(
              onTap: () {
                print("button pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text(
                  "Press me"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
