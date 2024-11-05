import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 199, 111, 111),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 208, 201, 0),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 4, 142, 188),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: const Color.fromARGB(255, 95, 6, 43),
                      ),
                      Container(
                      width: 100,
                      height: 100,
                      color: const Color.fromARGB(255, 76, 185, 224),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: const Color.fromARGB(255, 211, 23, 208),
                    )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 27, 120, 11),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 106, 108, 32),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 42, 22, 144),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 96, 28, 48),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 27, 120, 11),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 76, 185, 224),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 211, 23, 208),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
