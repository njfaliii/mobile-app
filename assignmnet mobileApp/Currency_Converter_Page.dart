import 'package:flutter/material.dart';
import 'Text_Field.dart';  
import 'Text.dart';    
import 'Text_Button.dart';

class Currency_Converter_Page extends StatelessWidget {
  const Currency_Converter_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Currency Converter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CurrencyText(),    
            CurrencyText_Field(), 
            CustomText_Button(),
          ],
        ),
      ),
    );
  }
}
