import 'package:flutter/material.dart';
import 'package:project1/resume.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Front-End Web Developer',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Code Alpha',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            const Text('Remote Intern'),
            const SizedBox(height: 10),
            const Text(
              'Successfully completed internship at Code Alpha Software House, gaining valuable hands-on experience in software development and contributing to real-world projects. Engaged in collaborative teamwork, honed technical skills, and gained insights into the professional software development environment.',
            ),
             Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Resume()),
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