

import 'package:flutter/material.dart';

class Assign2 StatelessWidget {
  const Assign2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: 
    Scaffold(
        backgroundColor: Colors.white,
         body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.black,
              ),
              Container(
                width: 270,
                height: 270,
                color: Colors.blue,
              ),
              Container(
                width: 240,
                height: 240,
                color: Colors.orange,
              ),
              Container(
                width: 210,
                height: 210,
                color: Colors.green,
              ),
              Container(
                width: 180,
                height: 180,
                color: Colors.grey,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text(
                  'This is\nInternal Box',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

        
  }
