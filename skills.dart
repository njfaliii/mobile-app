import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(
              'My Skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
           
            Text(' - Flutter Development'),
            Text(' - Dart Programming'),
            Text(' - UI/UX Design'),
           

            
          ],
        ),
      ),
    );
  }
}
