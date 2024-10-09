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
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            )
          ],
          title: const Text(
            "Shoes",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 207, 207, 207)
        ),
        body: Column(
          
          children: [
              SizedBox(
                height: 370,
                width: double.infinity,
                child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                width: double.infinity,
                // decoration: const BoxDecoration(
                //   color: Colors.blue,
                // ),
                child: const Text(
                  "Nike Air Force 1'07",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    padding:const  EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    width: 90,
                    color: const Color.fromARGB(255, 33, 110, 243),
                    decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    width: 90,
                    color: const Color.fromARGB(255, 33, 110, 243),
                    decoration:const BoxDecoration(
                      
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text("With iconic style and legendary comfort,the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopclassic with crisp leather,era-echoing '80s construction and reflective-design Swoosh logos."),
              ),
          ],
        ),
      ),
    );
  }
}
