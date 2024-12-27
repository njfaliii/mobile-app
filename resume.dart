import 'package:flutter/material.dart';
import 'skills.dart';
class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                height: 2,
                width: 400,
                color: Colors.black,
              ),
              Container(
                height: 60,
                width: 400,
                child: Row(
                  children: const [
                    Text('Proffesion',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    Text('Information Engineering Technology', style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(14),
                height: 2,
                width: 400,
                color: Colors.black,
              ),
              Container(
                height: 60,
                width: 400,
                child: Row(
                  children: const [
                    Text('Date Of Birth',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Text('19-9-2003'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(14),
                height: 2,
                width: 400,
                color: Colors.black,
              ),
              Container(
                height: 60,
                width: 400,
                child: Row(
                  children: const [
                    Text('Education',style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    Text('Higher Education'),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(14),
                height: 2,
                width: 400,
                color: Colors.black,
              ),
              const Padding(padding: EdgeInsets.all(8)),
 
              const Padding(padding: EdgeInsets.all(30)),
              Container(
                height: 60,
                width: 400,
                child: const Text('Education', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
               Container(
                padding: const EdgeInsets.all(14),
                height: 2,
                width: 400,
                color: Colors.black,
              ),
              Container(
                height: 60,
                width: 400,
                child: Row(
                  children: [
                    Text('Graduation ',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold ),),
                     Padding(padding: EdgeInsets.all(10)),
                    Text('University Of Lahore',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold ),)
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 400,
                child: Text('Bachelor of Science in Information and Engineering Technology,BSIET(Continue)'),
              ),
                Container(
                padding: const EdgeInsets.all(14),
                height: 2,
                width: 400,
                color: Colors.grey,
              ),
              Container(
                height: 60,
                width: 400,
                child: Row(
                  children: [
                    Text('Intermidiate ',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold ),),
                    Padding(padding: EdgeInsets.all(10)),
                    Text('punjab College',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold ),)
                  ],
                ),
              ),
                Container(
                height: 60,
                width: 400,
                child: Text('Fsc Pre Engineerinf'),
              ),
                Container(
                padding: const EdgeInsets.all(14),
                height: 2,
                width: 400,
                color: Colors.grey,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Skills(),
                    ),
                  );
                },
                child: const Text('search'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}