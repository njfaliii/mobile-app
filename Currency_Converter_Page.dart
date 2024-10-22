import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget
{
  const CurrencyConverterPage ({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(248, 3, 3, 3),
       body: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Currency Converter',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 250, 248, 248),

          ),)
          ]
         
         
         ),
       )
      );

  }
}