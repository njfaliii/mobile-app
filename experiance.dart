
import 'description.dart';
import 'package:flutter/material.dart';

class Experiance extends StatefulWidget {
  const  Experiance({super.key});

  @override
  State< Experiance> createState() => _ExperianceState();
}

class _ExperianceState extends State< Experiance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Projects ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  width: 400,
                  height:150,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        "Todo App",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 9.0),
                      Text(
                        "A simple todo app built with flutter.",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  ),
               ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height:150,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child:const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      "Weather App",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      "A weather app built with flutter that fetches data from rest API",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 150,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      "Expense Tracker App",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      "An expense tracker app enable users to manage thier expense on the go by providing user friendly interfaces.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                  
             
              ),
            
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Description()),
                  );
                },
                child: const Text('Search'), 
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}